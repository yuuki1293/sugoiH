head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

describeList :: [a] -> String
describeList ls = "The list is " ++ what ls
    where what [] = "empty."
          what [x] = "a singletion list."
          what xs = "a longer list."