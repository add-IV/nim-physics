# Package

version       = "0.1.0"
author        = "add-IV"
description   = "WASM wrapper"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 2.0.8"
requires "engine >= 0.1.0"

task wasm, "builds the wasm":
    exec "nimble uninstall -i engine"
    exec "( cd ../engine ; nimble install )"
    exec "mkdir -p ../frontend/src/wasm"
    exec "nim js -d:danger -o:../frontend/src/wasm/engine.js --app:lib src/wasm.nim"
