type Stack = [Int]

pop :: Stack -> (Int, Stack)
pop (x:xs) = (x, xs)