import System.Random
import Control.Monad(when)

main = do
  gen <- getStdGen
  askForNumber gen

askForNumber :: StdGen -> IO ()
askForNumber gen = do
  let (randNumber, newGen) = randomR (1,10) gen :: (Int, StdGen)
  putStrLn "Which number in the range from 1 to 10 am I thinking of>"
  numberString <- getLine
  when (not $ null numberString) $ do
    let number = reads numberString
    case number of
       [] -> do
         putStrLn "Bad number"
         askForNumber newGen
       [(num, rest)] -> do
         if ((length rest)>0)
           then putStrLn $ "Ignored: " ++ rest
           else return ()
         if randNumber == num then
           putStrLn "You are correct!"
           else
           putStrLn $ "Sorry, it was " ++ show randNumber
         askForNumber newGen
