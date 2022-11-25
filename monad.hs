import Control.Monad

type KnightPos = (Int, Int)

moveKnight :: [KnightPos] -> [[KnightPos]]
moveKnight ((c,r):xs) = do
    (c',r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
              ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
              ]
    guard (c' `elem` [1..8] && r' `elem` [1..8])
    return ((c', r'):(c,r):xs)

in3 :: KnightPos -> [[KnightPos]]
in3 start = return [start] >>= moveKnight >>= moveKnight >>= moveKnight

canRearchIn3 :: KnightPos -> KnightPos -> [[KnightPos]]
canRearchIn3 start end = 
    filter (\(x:xs) -> end == x) (in3 start)