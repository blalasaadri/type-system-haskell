module TypeClasses (
  getMax
) where

getMax :: (Ord a) => a -> a -> a
getMax a b = if a > b
             then a
             else b