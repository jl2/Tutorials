module Main (main) where

import Data.List
import Geometry.Sphere

       
numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

main = putStrLn (show $ area 4)