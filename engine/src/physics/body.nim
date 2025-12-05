import types

proc makeBody*(x, y, vx, vy: float32): Body =
  Body(pos: Vec2(x: x, y: y),
       vel: Vec2(x: vx, y: vy),
       mass: 1)

