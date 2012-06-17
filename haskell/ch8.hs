module Main (main) where

import Shapes

data Person = Person {firstName :: String,
                      lastName :: String,
                      age :: Int,
                      height :: Float,
                      phoneNumber :: String,
                      flavor :: String } deriving (Show)

data Car = Car { company :: String, model :: String, year :: Int} deriving (Show)



main = putStrLn $ show (nudge (baseRect 10 10) 15 15)
