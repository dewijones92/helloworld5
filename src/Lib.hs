module Lib
    ( someFunc,
    ) where

someFunc :: IO ()
someFunc = do
 putStrLn "asdasd"
 let foo = undefined
 print $ product [1..100]
 print $ dewi20 [1..100]
 print $ f44 ()
 print $ fInt 2

dewi20 :: ( Num a ) => [a] -> [a]
dewi20 = map (+1) . reverse

f44 :: () -> Integer
f44 () = 44
 
fInt :: Integer -> ()
fInt _ = ()

class DMonoid m where
  dmempty :: m
  dmappend :: m -> m -> m

instance DMonoid String where
  dmempty = ""
  dmappend = (++)
