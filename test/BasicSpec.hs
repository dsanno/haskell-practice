module BasicSpec (spec) where

import Test.Hspec

import qualified TestUtil

import Basic


spec :: Spec
spec = do
  describe "even'" $ do
    let testCases = [ (0, True)
                    , (1, False)
                    ]
    TestUtil.addTest even' testCases

  describe "add'" $ do
    let testCases = [ (0, 0, 0)
                    , (0, 1, 1)
                    ]
    TestUtil.addTest2 add' testCases
