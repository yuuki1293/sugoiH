import System.Random
import Control.Monad.Trans.State

randomSt :: (RandomGen g, Random a) => State g a
randomSt = state random