-- | Main entry point for checkpage executable.

import System.Environment (getArgs)
import System.Exit (exitFailure)

import Checkpage.Main (runMainWith)
import Checkpage.Options (defaultConfig)
import Checkpage.Types (Config (..))

main :: IO ()
main = getArgs >>= parseArgs defaultConfig


parseArgs :: Config -> [String] -> IO ()
parseArgs conf args = case args of
    [] -> showHelp >> exitFailure
    "-h":_ -> showHelp
    "--help":_ -> showHelp
    "-l":url:xs -> parseArgs (conf {loginURL = Just url}) xs
    "-f":path:xs -> parseArgs (conf {configFile = Just path}) xs
    x@('-':_):_ -> putStrLn ("Unknown option: " ++ x) >> showHelp >> exitFailure
    urls -> runMainWith conf urls


showHelp :: IO ()
showHelp = putStr "Usage:\n\
\Put more information here.\n\
\"
