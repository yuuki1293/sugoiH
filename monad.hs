import Control.Monad

type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c,r) = do
    (c',r') <- [(c+2,r-1),(c+2,r+1),(c-2,r-1),(c-2,r+1)
              ,(c+1,r-2),(c+1,r+2),(c-1,r-2),(c-1,r+2)
              ]
    guard (c' `elem` [1..8] && r' `elem` [1..8])
    return (c', r')