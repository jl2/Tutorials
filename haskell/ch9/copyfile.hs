import System.Environment
import System.Directory
import System.IO
import Control.Exception
import qualified Data.ByteString.Lazy as B

main = do
  (fileName1:fileName2:rest) <- getArgs
  if (length rest) > 0 then
    putStrLn "Too many arguments to copyfile."
    else
    copy fileName1 fileName2

copy :: String -> String -> IO ()
copy source dest = do
  contents <- B.readFile source
  bracketOnError
    (openTempFile "." "temp")
    (\(tempName, tempHandle) -> do
        hClose tempHandle
        removeFile tempName)
    (\(tempName, tempHandle) -> do
        B.hPutStr tempHandle contents
        hClose tempHandle
        renameFile tempName dest)
  