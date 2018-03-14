# Array Utils
Utility functions for arrays.

## Documentation
### Address
#### `index(address[] addresses, address a) internal pure returns (uint, bool)`
Searches for provided address starting from the left and returns the index and ok.
#### `extend(address[] storage a, address[] storage b) internal returns (bool)`
Merges two arrays. Mutates the first array.
#### `reverse(address[] storage a) internal returns (bool)`
Reverses the order of the array.

### UInt
#### `map(uint[] memory a, function(uint) pure returns (uint) f)`
Maps function f onto array a.
#### `reduce(uint[] memory a, function(uint) pure returns (uint) f)`
Reduces array a with function f.

# TODO:
- internal vs private?
- Storage versions of map and reduce
- address versions of map and reduce
- Permutations of storage/memory parameters and storage/memory return values make it difficult to maintain
  - Make tool to autogenerate these permutations and their tests
