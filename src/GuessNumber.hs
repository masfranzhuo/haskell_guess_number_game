module GuessNumber where

guessNumber :: Int -> Int -> String
guessNumber guessedNumber actualNumber =
  "Number "
    ++ show guessedNumber
    ++ " is "
    ++ case compare guessedNumber actualNumber of
      GT -> "higher than the actual number"
      LT -> "lower than the actual number"
      EQ -> "the correct number"