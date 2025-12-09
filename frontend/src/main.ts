const canvas = document.getElementById("mainCanvas");

if (!(canvas instanceof HTMLCanvasElement)){
    throw new Error("No Canvas Found");
    
}

const ctx = canvas.getContext("2d");
var lastRect = [0,0,0,0];

async function main() {
    let last = performance.now();

    function frame(t: number) {
        const dt = (t - last) / 100;
        last = t;

        stepWorld(dt);

        const pos = getPositions();
        ctx?.clearRect(lastRect[0] -1, lastRect[1] -1, lastRect[2]+1, lastRect[3]+1)
        ctx?.fillRect(pos[1].x, pos[1].y, 10, 10);
        lastRect = [pos[1].x, pos[1].y, 10, 10]

        requestAnimationFrame(frame);
    }

    requestAnimationFrame(frame);
}

main();

