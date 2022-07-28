module Lib
    ( someFunc 
    ) where
import Data.List (intersperse)
import Data.Char

someFunc :: IO ()
someFunc = do
  hmmm2

hmm1 :: IO ()
hmm1 = do line <- getLine   
          let line' = reverse line  
          putStrLn $ "You said " ++ line' ++ " backwards!"  
          putStrLn $ "Yes, you really said" ++ line' ++ " backwards!"  

hmmm2 = do line <- dfmap (intersperse '-' . reverse . map toUpper) getLine
           print $ dfmap (*3) (+100) 1
           print $ (+3) `dfmap` (+4) $ 1
           print $ (*3) . (+100) $ 1
           putStrLn line
           



class DFunctor f where
  dfmap :: (a -> b) -> f a -> f b


instance DFunctor IO where
  dfmap f action = do
    result <- action
    return (f result)
