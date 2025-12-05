import { initPhysics, stepPhysics, getPositions } from "./physics_interface";

async function main() {
    await initPhysics();

    let last = performance.now();

    function frame(t: number) {
        const dt = (t - last) / 1000;
        last = t;

        stepPhysics(dt);

        const pos = getPositions();
        console.log("body:", pos[0], pos[1]);

        requestAnimationFrame(frame);
    }

    requestAnimationFrame(frame);
}

main();

