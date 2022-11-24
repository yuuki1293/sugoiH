type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Pole
landLeft n (left, right) = (left + n, right)