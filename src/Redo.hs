module Redo where

import System.Process (createProcess, waitForProcess, shell)

redo :: String -> IO ()
redo target = do
  (_, _, _, ph) <- createProcess $ shell $ "sh " ++ target ++ ".do"
  _ <- waitForProcess ph
  return ()

