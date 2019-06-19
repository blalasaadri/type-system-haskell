module Main where

import Test.Hspec
import Test.QuickCheck

import Lib

main :: IO ()
main = hspec $

  describe "greeting" $ do
    it "will greet a given person" $
      greeting "me" `shouldBe` "Hello, me!"

    it "will greet an arbretrary person" $
      property $ \x -> greeting x == "Hello, " ++ x ++ "!"