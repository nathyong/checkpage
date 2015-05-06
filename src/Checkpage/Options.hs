module Checkpage.Options (
      Config (..)
    , defaultConfig
) where

-- | Program configuration.
data Config = Config {
      loginURL :: String
      -- ^ URL of the page to log in with, if any.
    }

-- | Default program configuration.
defaultConfig :: Config
defaultConfig = Config {
      loginURL = ""
    }
