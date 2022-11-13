sua = sum (filter (> 10) (map (*2) [2..10]))
sub = sum $ filter (> 10) (map (*2) [2..10])
suc = sum $ filter (>10) $ map (*2) [2..10]