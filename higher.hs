sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs