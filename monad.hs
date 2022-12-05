import Data.Ratio
import Control.Monad
import System.Directory.Internal.Prelude (Applicative)
import Control.Monad.Except (Functor)
import Control.Monad.RWS.Strict (MonadFail)

newtype Prob a = Prob { getProb :: [(a, Rational)] } deriving Show

instance Functor Prob where
    fmap f (Prob xs) = Prob $ map (\(x, p) -> (f x, p)) xs

flatten :: Prob (Prob a) -> Prob a
flatten (Prob xs) = Prob $ concat $ map multAll xs
    where multAll (Prob innerxs, p) = map (\(x, r) -> (x, p*r)) innerxs

instance Applicative Prob where
    pure x = Prob [(x,1%1)]
    Prob f <*> Prob a = Prob $ do (g, rf) <- f
                                  (x, ra) <- a
                                  [(g x, rf*ra)]

instance Monad Prob where
    m >>= f = flatten (fmap f m)

instance MonadFail Prob where
    fail _ = Prob []

thisSituation :: Prob (Prob Char)
thisSituation = Prob
    [(Prob [('a',1%2),('b',1%2)], 1%4)
    ,(Prob [('c',1%2),('d',1%2)], 3%4)
    ]

data Coin = Heads | Tails deriving (Show, Eq)

coin :: Prob Coin
coin = Prob [(Heads, 1%2),(Tails,1%2)]