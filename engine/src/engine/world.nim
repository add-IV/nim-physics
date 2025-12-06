import types

type
  World* = object
    bodies*: seq[Body]

proc initWorld*(): World =
  World(bodies: @[])

proc step*(w: var World, dt: float32) =
  ## (Very simple physics)
  for b in w.bodies.mitems:
    b.pos.x += b.vel.x * dt
    b.pos.y += b.vel.y * dt

