import types

type NotImplementedError = object of CatchableError

proc makeBody*(x, y, vx, vy: float32): Body =
  Body(pos: Vec2(x: x, y: y),
       vel: Vec2(x: vx, y: vy),
       mass: 1)

proc boundingBox*(body: Body): Rect=
  case body.shape:
  of Rectangle:
    return Rect(x: body.x, y: body.y, w: body.w, h: body.h)
  of Circle:
    return Rect(x: body.x - body.r, y: body.y - body.r, w: 2*body.r, h: 2*body.r)
  of Polygon:
    raise (ref NotImplementedError)(msg: "Polygons are not yet implemented")
