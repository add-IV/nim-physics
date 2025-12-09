import types

type NotImplementedError = object of CatchableError

proc makeBody*(x, y, vx, vy: float32): Body =
  Body(pos: (x: x, y: y),
       vel: (x: vx, y: vy),
       mass: 1)

proc makeRect*(x, y, w, h, vx, vy: float32): Body = 
  Body(pos: (x, y),
       vel: (vx, vy),
       mass: 1,
       shape: Shape.Rectangle,
       size: (w, h))

proc boundingBox*(body: Body): Rect=
  case body.shape:
  of Rectangle:
    return (x: body.x, y: body.y, w: body.w, h: body.h)
  of Circle:
    return (x: body.x - body.r, y: body.y - body.r, w: 2*body.r, h: 2*body.r)
  of Polygon:
    raise (ref NotImplementedError)(msg: "Polygons are not yet implemented")
