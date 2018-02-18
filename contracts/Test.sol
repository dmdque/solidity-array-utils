pragma solidity ^0.4.18;


import "./ArrayUtils.sol";

contract Test {
  using ArrayUtils for address[];

  address[] public addresses;

  function push(address a) public returns (uint) {
    addresses.push(a);
    return addresses.length;
  }

  function f(address a) public returns(uint, bool) {
    return addresses.index(a);
  }

}
