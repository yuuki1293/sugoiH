class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _ = True

instance YesNo Bool where
    yesno = id

instance YesNo (Maybe a) where
    yesno (Just _) = True
    yesno Nothing = False

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

instance YesNo (Tree a) where
    yesno EmptyTree = False
    yesno _ = True

data TrafficLight = Red | Yellow | Green

instance YesNo TrafficLight where
    yesno Red = False
    yesno _ = True