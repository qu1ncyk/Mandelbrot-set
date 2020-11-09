import { Complex } from './complex';

class Range {
    min: f64;
    max: f64;
    constructor(min: f64, max: f64) {
        this.min = min;
        this.max = max;
    }
    difference(): f64 {
        return this.max - this.min;
    }
}

export function generate(width: u32, height: u32, zoom: f64, posX: f64, posY: f64): Uint8ClampedArray {
    const imageDataArray = new Uint8ClampedArray(width * height * 4);

    const horizontalRange = new Range(-0.5 / zoom + posX, 0.5 / zoom + posX);
    const verticalRange = new Range(-0.5 / zoom + posY, 0.5 / zoom + posY);

    for (let i: u32 = 0; i < height; i++) {
        let y: f64 = verticalRange.min + i * verticalRange.difference() / height;

        for (let j: u32 = 0; j < width; j++) {
            let x: f64 = horizontalRange.min + j * horizontalRange.difference() / width;

            const complex = new Complex(x, y);
            const index: u32 = (i * width + j) * 4;
            
            if (complex.goesToInfinity() === -1) {
                imageDataArray[index] = 0;
                imageDataArray[index + 1] = 0;
                imageDataArray[index + 2] = 0;
            } else {
                imageDataArray[index] = 255;
                imageDataArray[index + 1] = 255;
                imageDataArray[index + 2] = 255;
            }
            imageDataArray[index + 3] = 255;
            // a pixel in a canvas has 4 bytes for Red, Green, Blue and Alpha
        }
    }
    return imageDataArray;
}