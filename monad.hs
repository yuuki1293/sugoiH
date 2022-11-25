justH :: Maybe Char
justH = do
    (x:xs) <- Just "hello"
    return x