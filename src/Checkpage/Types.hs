module Checkpage.Types (
      Config (..)
) where

-- | Program configuration.
data Config = Config {
      loginURL :: Maybe String
      -- ^ URL of the page to log in with, if any.
    }
