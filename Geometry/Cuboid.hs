module Geometry.Cuboid
( volume
, area
) where

volume :: Float -> Float -> Float -> Float
volume a b c = reactArea a b * c

area :: Float -> Float -> Float -> Float
area a b c = reactArea a b * 2 + reactArea a c * 2 + reactArea c b * 2

reactArea :: Float -> Float -> Float
reactArea a b = a * b