module TypeClassesSpec where

import Test.Hspec
import Test.QuickCheck (property)

import TypeClasses (getMax)

-- In some of the following tests, we'll be using QuickCheck and Hspec together.
-- Check https://hspec.github.io/quickcheck.html for details on that.

-- We could, in theory, test everything that is an instance of Ord (http://hackage.haskell.org/package/base-4.12.0.0/docs/Data-Ord.html#t:Ord)

spec :: Spec
spec = do
  describe "getMax" $ do

    it "will return the first Int if that is larger" $
      property $ \(x, y) -> getMax (abs (x :: Int) + (y :: Int)) y `shouldBe` (abs x + y)
-- This also works, though we'd be kind of cheating.
--      property $ \(x, y) -> getMax (x :: Int) (y :: Int) `shouldBe` (max x y)

    it "will return the second Int if that is larger" $
      property $ \(x, y) -> getMax (x :: Int) (x + abs (y :: Int)) `shouldBe` (x + abs y)

    it "will return the first Double if that is larger" $
      property $ \(x, y) -> getMax (abs (x :: Double) + (y :: Double)) y `shouldBe` (abs x + y)

    it "will return the second Double if that is larger" $
      property $ \(x, y) -> getMax (x :: Double) (x + abs (y :: Double)) `shouldBe` (x + abs y)

    it "will return the first Char if that is larger" $
      property $ \x -> getMax (succ (x :: Char)) x `shouldBe` (succ x)

    it "will return the second Char if that is larger" $
      property $ \x -> getMax (x :: Char) (succ x) `shouldBe` (succ x)

    it "will return the larger string" $
      getMax "Hello" "World" `shouldBe` "World"

    -- In Haskell, Bools are ordered. See http://hackage.haskell.org/package/base-4.12.0.0/docs/Data-Bool.html for details.
    it "will return the larger Bool" $
      getMax True False `shouldBe` True