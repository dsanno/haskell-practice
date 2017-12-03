module TestUtil(
    addTest
  , addTest2
    ) where

import Test.Hspec (Expectation, it, shouldBe)
import Control.Monad (forM_)


addTest f cases = do
  forM_ cases $ \(x, y) ->
    it (show x) $ do
      f x `shouldBe` y

addTest2 f cases = do
  forM_ cases $ \(x1, x2, y) ->
    it (show x1 ++ " " ++ show x2) $ do
      f x1 x2 `shouldBe` y
