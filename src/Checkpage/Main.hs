-- | The heart of the checkpage utility.
module Checkpage.Main (
      runMainWith
) where

import Checkpage.Types (Config (..))

runMainWith :: Config -> [String] -> IO ()
runMainWith conf urls = undefined
