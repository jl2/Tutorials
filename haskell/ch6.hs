
compareWithHundred :: (Num a, Ord a) => a-> Ordering
compareWithHundred x = compare 100 x

compareWithHundred':: (Num a, Ord a) => a-> Ordering
compareWithHundred' = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A' .. 'Z'])

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

zipWith'' _ [] _ = []
zipWith'' _ _ [] = []
zipWith'' f (x:xs) (y:ys) = f x y : zipWith'' f xs ys

flip' :: (a->b->c)-> (b -> a -> c)
flip' f y x = f x y

applyTimes :: (Num b) => (a->a) -> b -> a -> a
applyTimes _ 0 val = val
applyTimes f n val = applyTimes f (n-1) (f val)

rot13 :: (Enum b) => [b] -> [b]
rot13 x = map succ13 x
  where succ13 = (applyTimes succ) 13

unrot13 :: (Enum b) => [b] -> [b]
unrot13 x = map pred13 x
  where pred13 = (applyTimes pred) 13

maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc  else acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) +1
