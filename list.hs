eve = [x*2 | x <- [1..10], x*2 >= 12]
mod7'3 = [x | x <- [50..100], x `mod` 7 == 3]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]