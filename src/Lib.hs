module Lib
    ( someFunc,
    ) where

someFunc :: IO ()
someFunc = do line <- getLine   
              let line' = reverse line  
              putStrLn $ "You said " ++ line' ++ " backwards!"  
              putStrLn $ "Yes, you really said" ++ line' ++ " backwards!"  


class DFunctor f where
  dfmap :: (a -> b) -> f a -> f b


instance DFunctor IO where
  dfmap f action = do
    result <- action
    return (f result)
