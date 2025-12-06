import engine

var world = engine.initWorld()

# Create example body
world.bodies.add makeBody(0, 0, 1, 1)

proc stepWorld*(dt: float32) {.exportc.} =
  world.step(dt)

# Export pointer to positions as JS-accessible
proc getPositions*(): pointer {.exportc.} =
  return world.bodies[0].pos.addr

