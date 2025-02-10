```haskell
import Data.List (sort)

instance Ord a => Ord (a, String) where
    compare (a1, b1) (a2, b2) = compare a1 a2

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]
  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  let as = [(1, "a"), (2, "b"), (3, "c")]
  let bs = sort as
  print bs -- Output: [(1, "a"),(2, "b"),(3,"c")]
  let cs = [(3, "a"), (1, "b"), (2, "c")]
  let ds = sort cs
  print ds -- Output: [(1, "b"),(2, "c"),(3,"a")]
```