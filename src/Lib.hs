module Lib
    ( greet,
      greeting
    ) where

greeting :: String -> String
greeting name = "Hello, " ++ name ++ "!"

greet :: String -> IO ()
greet = putStrLn . greeting
