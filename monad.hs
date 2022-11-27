import Control.Monad.Writer

newtype Difflist a = DiffList { getDiffList :: [a] -> [a]}

toDiffList :: [a] -> Difflist a
toDiffList xs = DiffList (xs++)