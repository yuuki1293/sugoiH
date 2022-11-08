bmiTell :: Double -> Double -> String
bmiTell weight  height
    | weight / height ^ 2 <= 18.5 = "You're underweight, your emo, you!"
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal.\
                                    \ Pffft, I bet you're ugly!"
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise   = "You're a whale, congratulations!"

max' :: (Ord a) => a -> a -> a
max' a b
    | a <= b    = b
    | otherwise = a

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
    | a == b    = EQ
    | a <= b    = LT
    | otherwise = GT