module Main (main) where

import Shapes

data Person = Person {firstName :: String,
                      lastName :: String,
                      age :: Int,
                      height :: Float,
                      phoneNumber :: String,
                      flavor :: String } deriving (Show)

data Car = Car { company :: String, model :: String, year :: Int} deriving (Show)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x < a = Node a (treeInsert x left) right
  | x > a = Node a left (treeInsert x right)
            

main = putStrLn $ show (nudge (baseRect 10 10) 15 15)
