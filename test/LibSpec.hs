module LibSpec where

import Test.Hspec
import Test.QuickCheck

import Lib

spec :: Spec
spec = do
  describe "greeting" $ do
    it "will greet a given person" $
      greeting "me" `shouldBe` "Hello, me!"

    it "will greet an arbretrary person" $
      property $ \x -> greeting x == "Hello, " ++ x ++ "!"