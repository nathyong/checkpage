-- | Various types for the Checkpage utility.

module Checkpage.Types (
      Config (..)
    , Comparison (..)
    , URL
    , HTML
) where

import Data.ByteString (ByteString)


-- | Program configuration.
data Config = Config {
      loginURL :: Maybe String
      -- ^ URL of the page to log in with, if any.
    , configFile :: Maybe String
      -- ^ Path to a file with login configuration.
    }


-- | Data type representing possibilies when comparing two pages.
data Comparison = Unchanged
                | Changed {deltas :: [(ByteString, ByteString)]}
                deriving (Read, Show, Eq)


-- | Convenience types
type URL = String
type HTML = ByteString
