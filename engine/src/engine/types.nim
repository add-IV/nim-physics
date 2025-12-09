type
  Vec2* = object
    x*, y*: float32

  Rect* = object
    x*, y*, w*, h*: float32
  
  Shape* = enum
    Rectangle, Circle, Polygon
  
  RenderMode* = enum
    Sprite, Stroke, Fill
  
  Color* = object
    r*, g*, b*: float32

  Body* = object
    pos*, vel*: Vec2
    rot*: float32
    mass*: float32
    case shape*: Shape
    of Rectangle:
      w*, h*: float32
    of Circle:
      r*: float32
    of Polygon:
      points*: seq[float32]
    case renderMode*: RenderMode:
    of Sprite:
      spriteName*: string
    of Stroke, Fill:
      color*: Color

template x*(b: Body): untyped = b.pos.x
template `x=`*(b: var Body; v: float) = b.pos.x = v

template y*(b: Body): untyped = b.pos.y
template `y=`*(b: var Body; v: float) = b.pos.y = v
  