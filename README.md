# Haskell Sort Function Unexpected Behavior
This repository demonstrates an unexpected behavior of Haskell's built-in `sort` function when used with lists of tuples. The `sort` function works as expected when sorting lists of simple types like integers, but it produces unexpected results or errors when sorting lists of tuples.

## Problem Description
The `sort` function, when used on lists of tuples, does not sort them in the way one might intuitively expect.  Instead of sorting by the first element of the tuple and then by the second element if the first elements are equal, it uses a lexicographical comparison. For custom data structures, you need to define a proper `Ord` instance to ensure correct sorting.

## Solution
The solution is to provide a custom `Ord` instance for the tuple type (or your custom data type). The `Ord` instance specifies how elements should be compared for sorting.  The example below demonstrates this using `deriving` and custom comparison logic.