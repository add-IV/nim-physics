declare function stepWorld(timestep: number): void;

declare enum Shape {
    Rectangle,
    Circle,
    Polygon
}

interface Vec2{
    x, y: number
}

interface RectangleBody {
    pos, vel: Vec2,
    mass: number,  
    shape: Shape.Rectangle,
    size: Vec2
}

interface CicleBody {
    pos, vel: Vec2,
    mass: number,  
    shape: Shape.Circle,
    r: number
}

declare function getBodies(): any[];