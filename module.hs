import Data.Char
import Data.List

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show