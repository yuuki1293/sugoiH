data Tree a = EmptyTree | Node a (Tree a) (Tree b) deriving (Show)