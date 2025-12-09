import engine

var world = engine.initWorld()

# Create example body
world.bodies.add makeRect(0, 0, 10, 10, 1, 1)

proc stepWorld(dt: float32) {.exportc.} =
  world.step(dt)

# Export pointer to positions as JS-accessible
proc getBodies(): auto {.exportc.} =
  return world.bodies

