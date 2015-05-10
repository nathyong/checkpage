{-# LANGUAGE OverloadedStrings #-}
-- | The heart of the checkpage utility.

module Checkpage.Main (
      runMainWith
) where

import Data.ByteString (ByteString)
import Network.Wreq

import Checkpage.Types (Config (..), Comparison (..), URL, HTML)


-- | Invokes the main functionality of the utility itself.
runMainWith :: Config -> [URL] -> IO ()
runMainWith conf urls = undefined


-- | Compares two pages and returns a comparison result, depending on what
-- changed.
checkPage :: HTML -> HTML -> Comparison
checkPage cached response = undefined
