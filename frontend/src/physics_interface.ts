import {stepWorld, getPositions} from "./wasm/engine";

console.log(stepWorld);

export function stepPhysics(dt: number) {
    stepWorld(dt);
}

export function getPositions_() {
    const ptr = getPositions();
    return new Float32Array(memory.buffer, ptr, 2); // x,y
}

