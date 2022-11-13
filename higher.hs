maa = map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
mab = map (negate . abs) [5,-3,-6,7,-3,2,-19,24]
la = map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]