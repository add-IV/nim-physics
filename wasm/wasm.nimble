# Package

version       = "0.1.0"
author        = "add-IV"
description   = "WASM wrapper"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 2.0.8"
requires "engine#../engine >= 0.1.0"

task wasm, "builds the wasm":
    exec "mkdir -p ../frontend/public/wasm"
    exec "nim js -d:release -o:../frontend/public/wasm/engine.js src/wasm_bindings.nim"

