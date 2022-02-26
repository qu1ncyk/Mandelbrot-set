const fs = require("fs");
const WebWorker = require("web-worker");

global.fetch = jest.fn(path =>
    Promise.resolve({
        arrayBuffer: () => Promise.resolve(
            fs.readFileSync("public/" + path)
        )
    })
);

global.Worker = function (path) {
    this.worker = new WebWorker("public/" + path);
    this.postMessage = data => this.worker.postMessage(data);
    this.worker.onmessage = event => this.onmessage(event);
    this.terminate = () => this.worker.terminate();
};

// the DOM Testing Library seems to need these
global.clearImmediate = global.setImmediate = () => {};