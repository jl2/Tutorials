module Main (main) where

import Shapes

data Person = Person String String Int Float String String deriving (Show)



main = putStrLn $ show (nudge (baseRect 10 10) 15 15)
