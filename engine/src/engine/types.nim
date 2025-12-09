type
  Vec2* = tuple
    x, y: float32

  Rect* = tuple
    x, y, w, h: float32
  
  Shape* = enum
    Rectangle, Circle, Polygon
  
  RenderMode* = enum
    Stroke, Fill, Sprite
  
  Color* = object
    r*, g*, b*: int

  Body* = object
    pos*, vel*: Vec2
    rot*: float32
    mass*: float32

    case shape*: Shape
    of Rectangle:
      size*: Vec2
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

template w*(b: Body): untyped = b.size.x
template `w=`*(b: var Body; v: float) = b.size.x = v

template h*(b: Body): untyped = b.size.y
template `h=`*(b: var Body; v: float) = b.size.y = v
  