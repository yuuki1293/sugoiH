import Data.Ratio

newtype Prob a = Prob { getProb :: [(a, Rational)] } deriving Show