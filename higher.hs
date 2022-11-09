multThree :: Int -> (Int -> (Int -> Int))
multThree x y z = x * y * z

multTwoWithNine :: Int -> (Int -> Int)
multTwoWithNine = multThree 9