async function main() {
    let last = performance.now();

    function frame(t: number) {
        const dt = (t - last) / 1000;
        last = t;

        stepWorld(dt);

        const pos = getPositions();
        console.log("body:", pos[0], pos[1]);

        requestAnimationFrame(frame);
    }

    requestAnimationFrame(frame);
}

main();

