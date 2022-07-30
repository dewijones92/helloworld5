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

hmmm2 = do 
          print $ dfmap (*3) (+100) 1
          print $ (+3) `dfmap` (+4) $ 1
          print $ (*3) . (+100) $ 1
          let ggg =  dfmap (replicate 3) (Left "foo")
          print $ dfmap (*2) (Just 2)
          let dewi1 = fmap (++) (Just "hey")
          let lol = Just (++ "aas")
          putStrLn "asd"

instance DFunctor CMaybe where
  dfmap f CNothing = CNothing
  dfmap f (CJust counter x) = CJust (counter + 1) (f x)


data CMaybe a = CNothing | CJust Int a deriving (Show)
           

dewiadd :: (Num a) => a -> a -> a
dewiadd = (+)

instance DFunctor (Maybe) where
  dfmap f (Just a) = Just (f a)
  dfmap _ Nothing  = Nothing

instance DFunctor ( Either a) where
  dfmap f (Right a) = Right (f a)
  dfmap f (Left a) = Left a

instance DFunctor ((->) r) where
  dfmap = (.)
  -- dfmap = (.)


class DFunctor f where
  dfmap :: (a -> b) -> f a -> f b


instance DFunctor IO where
  dfmap f action = do
    result <- action
    return (f result)
