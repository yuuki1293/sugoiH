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