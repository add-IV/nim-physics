let wasm: any;

export async function initPhysics() {
    wasm = await import("/wasm/engine.js"); // served by vite
}

export function stepPhysics(dt: number) {
    wasm.stepWorld(dt);
}

export function getPositions() {
    const ptr = wasm.getPositions();
    return new Float32Array(wasm.memory.buffer, ptr, 2); // x,y
}

