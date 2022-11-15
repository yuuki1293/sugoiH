import System.Environment
import Data.List

main = do
    args <- getArgs
    progName <- getProgName
    putStrLn "The arguments are:"
    mapM_ putStrLn args
    putStrLn "The proram name is:"
    putStrLn progName