module Main where

import Lib
import Perceptron

main :: IO ()
main = putStr.show $ compute Perceptron { weights = [1, 2, 3], threshold = sigmoid } [2,3,4]
