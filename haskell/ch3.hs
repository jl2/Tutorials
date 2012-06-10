lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number seven!"
lucky x = "Sorry, you're out of luck"

sayMe :: (Integral a) => a -> String
sayMe 1 = "one"
sayMe 2 = "two"
sayMe 3 = "three"
sayMe 4 = "four"
sayMe 5 = "five"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors (x1, y1) (x2, y2) = (x1+x2, y1+y2)

first :: (a,b,c) -> a
first (x,_,_)  = x

second :: (a,b,c) -> b
second (_,y,_) = y

third :: (a,b,c) -> c
third (_,_,z) = z

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
  | bmi <= 18.5 = "underweight"
  | bmi <= 25.0 = "normal"
  | bmi <= 30.0 = "fatty"
  | otherwise = "whale"

