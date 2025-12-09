# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import engine

test "can add body":
  var world = engine.initWorld()
  world.bodies.add makeBody(0, 0, 1, 1)
  let r: engine.Rect = (x: 0, y: 0, w: 0, h: 0)
  echo world.bodies[0]
  check world.bodies[0].boundingBox == r


test "can add rect":
  var world = engine.initWorld()
  world.bodies.add makeRect(0, 0, 10, 10, 1, 1)
  let r: engine.Rect = (x: 0, y: 0, w: 10, h: 10)
  echo world.bodies[0]
  check world.bodies[0].boundingBox == r
