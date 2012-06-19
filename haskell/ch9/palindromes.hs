import Control.Monad

main = interact respondPalindromes

respondPalindromes :: String -> String
respondPalindromes =
  unlines .
  map (\xs -> if (isPal xs)
              then
                (xs ++ " is a palindrome")
              else
                (xs ++ " is not a palindrome")) .
  lines

isPal :: String -> Bool
isPal xs = xs == reverse xs
