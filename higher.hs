maa = map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
mab = map (negate . abs) [5,-3,-6,7,-3,2,-19,24]
la = map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
la' = map (negate. sum . tail) [[1..5],[3..6],[1..7]]
su = sum (replicate 5 (max 6.7 8.9))
su' = (sum . replicate 5) (max 6.7 8.9)
su'' = sum . replicate 5 $ max 6.7 8.9
re = replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))
re' = replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

fn x = ceiling (negate (tan (cos (max 50 x))))
fn' = ceiling . negate . tan . cos . max 50

oddSquareSum :: Integer
oddSquareSum = sum . takeWhile (<10000) . filter odd $ map (^2) [1..]