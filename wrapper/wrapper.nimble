# Package

version       = "0.1.0"
author        = "add-IV"
description   = "JS wrapper"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 2.0.8"
requires "engine >= 0.1.0"

task wrapper, "builds the wasm":
    exec "nimble uninstall -i engine"
    exec "( cd ../engine ; nimble install )"
    exec "mkdir -p ../frontend/src/wrapper"
    exec "nim js -d:danger -o:../frontend/src/wrapper/engine.js --app:lib src/wrapper.nim"
