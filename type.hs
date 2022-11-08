eq = 5 == 5
eq' = 5/= 5
eq'' = 'a' == 'a'
eq''' = "Ho Ho" == "Ho Ho"
eq'''' = 3.432 == 3.432
oa = "Abrakadabra" < "Zebra"
ob = "Abrakadabra" `compare` "Zebra"
oc = 5 >= 2
od = 5 `compare` 3
oe = 'b' > 'a'
sh = show 3
sh' = show 5.334
sh'' = show True
rea = read "True" || False
reb = read "8.2" + 3.8
rec' = read "5" - 2
red = read "[1,2,3,4]" ++ [3]
ree = read "5" :: Int
ref = read "5" :: Float
reg = (read "5" :: Float) * 4
reh = read "[1,2,3,4]" :: [Int]
rei = read "(3, 'a')" :: (Int, Char)
en = ['a'..'e']
en' = [LT .. GT]
en'' = [3 .. 5]
en''' = succ 'B'
intMin = minBound :: Int
charMax = maxBound :: Char
boolMax = maxBound :: Bool
boolMin = minBound :: Bool
tupleMax = maxBound :: (Bool, Int, Char)