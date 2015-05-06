-- | Main entry point for checkpage executable.

import System.Environment (getArgs)

import Checkpage.Main (runMainWith)
import Checkpage.Options (Config (..), defaultConfig)

main :: IO ()
main = getArgs >>= parseArgs defaultConfig

parseArgs :: Config -> [String] -> IO ()
parseArgs conf args = case args of
    [] -> showHelp
    "-h":_ -> showhelp
    "--help":_ -> showHelp
    x@('-':_):_ -> putStrLn ("Unknown option: " ++ x) >> showHelp
    "-l":url:xs -> parseArgs (conf {LoginUrl = url}) xs
    url:[] -> runMainWith conf url
    _ -> showHelp

showHelp :: IO ()
