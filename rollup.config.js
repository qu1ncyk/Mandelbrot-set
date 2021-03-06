import svelte from 'rollup-plugin-svelte';
import resolve from '@rollup/plugin-node-resolve';
import commonjs from '@rollup/plugin-commonjs';
import livereload from 'rollup-plugin-livereload';
import { terser } from 'rollup-plugin-terser';
import sveltePreprocess from 'svelte-preprocess';
import typescript from '@rollup/plugin-typescript';
import fs from 'fs';
import asc from 'assemblyscript/cli/asc';
import sourcemaps from 'rollup-plugin-sourcemaps';
import css from 'rollup-plugin-css-only';
//import nodePolyfills from 'rollup-plugin-polyfill-node';

const test = process.env.TEST === "true";
const production = !process.env.ROLLUP_WATCH;

function serve() {
    let server;

    function toExit() {
        if (server) server.kill(0);
    }

    return {
        writeBundle() {
            if (server) return;
            server = require('child_process').spawn('npm', ['run', 'start', '--', '--dev'], {
                stdio: ['ignore', 'inherit', 'inherit'],
                shell: true
            });

            process.on('SIGTERM', toExit);
            process.on('exit', toExit);
        }
    };
}

export default [{
        input: 'src/main.ts',
        output: {
            sourcemap: true,
            format: 'iife',
            name: 'app',
            file: 'public/build/bundle.js'
        },
        plugins: [
            svelte({
                preprocess: sveltePreprocess(),
                compilerOptions: {
                    // enable run-time checks when not in production
                    dev: !production
                        // we'll extract any component CSS out into
                        // a separate file - better for performance

                }
            }),
            css({ output: 'bundle.css' }),

            // If you have external dependencies installed from
            // npm, you'll most likely need these plugins. In
            // some cases you'll need additional configuration -
            // consult the documentation for details:
            // https://github.com/rollup/plugins/tree/master/packages/commonjs
            resolve({
                browser: true,
                dedupe: ['svelte']
            }),
            commonjs(),
            typescript({
                sourceMap: true,
                inlineSources: true
            }),

            // In dev mode, call `npm run start` once
            // the bundle has been generated
            !production && serve(),

            // Watch the `public` directory and refresh the
            // browser on changes when not in production
            !production && livereload('public'),

            // If we're building for production (npm run build
            // instead of npm run dev), minify
            production && terser(),

            sourcemaps(),

            //nodePolyfills()
        ],
        watch: {
            clearScreen: false
        }
    },
    {
        input: 'src/worker.ts',
        output: {
            sourcemap: true,
            format: 'iife',
            name: 'worker',
            file: 'public/build/worker.js'
        },
        plugins: [
            resolve({
                browser: true
            }),
            commonjs(),
            typescript({
                sourceMap: true,
                inlineSources: true
            }),
            production && !test && terser(),
            {
                name: 'Compile AS',
                load() {
                    fs.readdirSync('assembly')
                        .filter(fileName => fileName.endsWith('.ts'))
                        .forEach(fileName => this.addWatchFile('assembly/' + fileName));
                },
                generateBundle() {
                    asc.ready.then(() => {
                        asc.main([
                            'assembly/index.ts',
                            '--config', 'asconfig.json',
                            '--target', production && !test ? 'release' : 'debug',
                            '--sourceMap', 'build/generate.wasm.map',
                            '--runtime', 'minimal',
                            '--exportRuntime'
                        ], {
                            stdout: process.stdout,
                            stderr: process.stderr
                        })
                    })
                }
            },
            sourcemaps({
                include: ['build/generate.wasm']
            })
        ]
    }
].slice(test);
// only build worker if test is true, else build both