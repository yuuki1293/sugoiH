import Control.Monad.Writer

newtype DiffList a = DiffList { getDiffList :: [a] -> [a]}

toDiffList :: [a] -> DiffList a
toDiffList xs = DiffList (xs++)

formDiffList :: DiffList a -> [a]
formDiffList (DiffList f) = f []