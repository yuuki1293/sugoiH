data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

instance Functor Tree where
    fmap f EmptyTree = EmptyTree
    fmap f (Node x left right)
                    = Node (f x) (fmap f left) (fmap f right)