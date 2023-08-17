module Main where

import System.Random
import GuessNumber

main :: IO ()
main = do
  putStrLn "Please guess the number between 1 - 100"
  randomNumber <- randomRIO (1, 100) :: IO Int
  putStrLn ("Generated Number: " ++ show randomNumber)
  guessedNumber <- getLine
  putStrLn (guessNumber (read guessedNumber) randomNumber)