import Control.Monad.Writer

newtype Difflist a = DiffList { getDiffList :: [a] -> [a]}