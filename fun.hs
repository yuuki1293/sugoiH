cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

le = [let square x = x * x in (square 5, square 3, square 2)]
le' = (let a = 100; b = 200; c = 300 in a*b*c, let foo = "Hey "; bar = "there!" in foo ++ bar)
le'' = (let (a, b, c) = (1, 2, 3) in a+b+c) * 100
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]