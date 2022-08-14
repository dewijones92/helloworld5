module Lib
    ( someFunc
    ) where
import Data.List (intersperse)
import Data.Char

someFunc :: IO ()
someFunc = do
  print $ show $ Just2 3
  print "heyyy"
  print $ show $ dfmap id (Just2 3)
  putStrLn "hey11"
  print $ show $ id (Just2 3)
  putStrLn "hey22"
  print $ dfmap (+3) [1..10]
  putStrLn "hey33"
  let ff = fmap (+3) (+3)
  putStr "asdasd"





data Maybe2 a = Nothing2 | Just2 a deriving Show

class Functor2 f where
  dfmap :: (a -> b) -> f a -> f b

instance Functor2 [] where
  dfmap = map

instance Functor2 Maybe2 where
  dfmap f Nothing2 = Nothing2
  dfmap f (Just2 x) = Just2 (f x)

