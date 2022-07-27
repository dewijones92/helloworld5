module Lib
    ( someFunc,
    ) where

someFunc :: IO ()
someFunc = do
 putStrLn "asdasd"



class DFunctor f where
  dfmap :: (a -> b) -> f a -> f b


instance DFunctor IO where
  dfmap f action = do
    result <- action
    return (f result)
