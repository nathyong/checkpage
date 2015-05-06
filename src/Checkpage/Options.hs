module Checkpage.Options (
      defaultConfig
) where

import Checkpage.Types (Config (..))

-- | Default program configuration.
defaultConfig :: Config
defaultConfig = Config {
      loginURL = Nothing
    }
