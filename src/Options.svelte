<script lang="ts">
    import { Tabs, Tab, TabList, TabPanel } from "svelte-tabs";
    import type { Point } from "./point";
    import { createEventDispatcher } from "svelte";

    let dispatch = createEventDispatcher();
    function update(event: Event) {
        event.preventDefault();
        dispatch("update");
    }

    export let width: number,
        height: number,
        offset: Point,
        zoom: number,
        color: boolean,
        numberOfIterations: number,
        numberOfThreads: number;
    let colorString = "true";
    $: color = colorString === "true";
    // svelte won't let me have booleans as attributes
</script>

<style>
    :global(.svelte-tabs li.svelte-tabs__tab) {
        color: #ccc;
    }
    :global(body.light .svelte-tabs li.svelte-tabs__tab) {
        color: #333;
    }
    :global(.svelte-tabs) {
        border-bottom: 1px solid #ccc;
    }

    h2 {
        font-size: 1.3em;
        margin-bottom: 0.3em;
    }
    form {
        text-align: center;
    }
    input[type="number"] {
        width: 5em;
    }
    .container div:first-of-type h2 {
        margin-top: 0;
    }
    input[type="submit"] {
        margin-top: 1em;
    }
    .color-container label {
        text-align: left;
    }

    /* Remove arrow button from number input */
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
    input[type="number"] {
        -moz-appearance: textfield;
    }

    @media (min-width: 640px) {
        h2 {
            font-size: 1.7em;
        }
    }
</style>

<form on:submit={update}>
    <Tabs>
        <TabList>
            <Tab>Camera</Tab>
            <Tab>Canvas</Tab>
            <Tab>Calculation</Tab>
        </TabList>

        <TabPanel>
            <div>
                <h2>Center position</h2>
                (<input type="number" step="any" bind:value={offset.x} />,
                <input type="number" step="any" bind:value={offset.y} />)
            </div>
            <div>
                <h2>Zoom</h2>
                <input type="number" step="0.1" bind:value={zoom} />%
            </div>
        </TabPanel>

        <TabPanel>
            <div>
                <h2>Canvas size</h2>
                <input type="number" bind:value={width} />
                &times;
                <input type="number" bind:value={height} />
            </div>
            <div class="color-container">
                <h2>Color</h2>
                <label><input
                        type="radio"
                        bind:group={colorString}
                        value="true" />
                    Color</label>
                <label><input
                        type="radio"
                        bind:group={colorString}
                        value="false" />
                    Black & white</label>
            </div>
        </TabPanel>

        <TabPanel>
            <div>
                <h2>Number of iterations</h2>
                <input type="number" bind:value={numberOfIterations} />
            </div>
            <div>
                <h2>Number of threads</h2>
                <input type="number" bind:value={numberOfThreads} />
            </div>
        </TabPanel>
    </Tabs>
    <input type="submit" value="Update" />
</form>
