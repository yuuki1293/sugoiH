tup = (1, 3)
tup' = (3, 'a', "hello")
tup'' = (50, 50.4, "hello", 'b')
fs = fst (8, 11)
fs' = fst ("Wow", False)
sn = snd (8, 11)
sn' = snd ("Wow", False)
zi = zip [1,2,3,4,5] [5,5,5,5,5]
zi' = zip [1..5] ["one","two","three","four","five"]
zi'' = zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]
zi''' = zip [1..] ["apple", "orange", "cherry", "mango"]
triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10] ]
rightTriangles = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2 ]