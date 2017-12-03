module Basic
    ( even'
    , add'
    ) where


even' :: Int -> Bool
even' x = x `mod` 2 == 0


add' :: (Num a) => a -> a -> a
add' x y = x + y
