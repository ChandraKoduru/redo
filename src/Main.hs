module Main where

import System.Environment (getArgs)
import Redo (redo)

main :: IO ()
main = do
  args <- getArgs
  _ <- mapM redo args
  return ()
