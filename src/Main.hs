module Main where

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let width = if (length args == 0) then 80 else (read $ args !! 0)
  let dataSource = if (length args <= 1) then getContents else readFile (args !! 1)
  map (take width) . lines <$> dataSource >>= mapM_ putStrLn

