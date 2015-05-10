module Checkpage.Types (
      Config (..)
) where

-- | Program configuration.
data Config = Config {
      loginURL :: Maybe String
      -- ^ URL of the page to log in with, if any.
    , configFile :: Maybe String
      -- ^ Path to a file with login configuration.
    }
