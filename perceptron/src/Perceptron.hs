module Perceptron
    (
        Perceptron(..),
        compute,
        sigmoid,
        correct
    ) where

data Perceptron = Perceptron { weights :: [Double], threshold :: Double -> Double }
compute :: Perceptron -> [Double] -> Double
compute (Perceptron weights threshold) inputs = threshold $ foldl (+) 0.0 (zipWith (*) weights inputs)
correct :: Perceptron -> Double -> Perceptron
correct (Perceptron weights threshold) delta = Perceptron { weights = map ((*) delta) weights, threshold = threshold}
sigmoid :: (Floating a) => a -> a
sigmoid t = 1 / (1 + exp (-1 * t))