module Main where

import Lib
import Perceptron

main :: IO ()
main = putStr $ show Perceptron { weight = [1, 2, 3] }
