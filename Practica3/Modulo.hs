module Modulo (esParBit) where

esParBit :: Int -> Bool
esParBit x = (x `mod` 2) == 0