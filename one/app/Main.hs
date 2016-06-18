{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Exception
import Formatting
import Formatting.Clock
import System.Clock

main =
    do
      start <- getTime Monotonic
      a <- evaluate(sum [i | i <- [1..999], i `mod` 3 == 0 || i `mod` 5 == 0])
      end <- getTime Monotonic

      fprint ("Sum is: " % int % "\n") a
      fprint (timeSpecs % "\n") start end

