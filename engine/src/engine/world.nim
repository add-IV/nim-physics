import types

type
  World* = object
    bodies*: seq[Body]

proc initWorld*(): World =
  World(bodies: @[])

proc step*(w: var World, dt: float32) =
  ## just move
  for b in w.bodies.mitems:
    b.x += b.vel.x * dt
    b.y += b.vel.y * dt