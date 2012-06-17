module Main (main) where

import Shapes

main = putStrLn $ show (nudge (baseRect 10 10) 15 15)
