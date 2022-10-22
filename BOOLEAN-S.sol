//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract Boolean {
    bool public value = true; //default value of bool is false

  function isCorrect(uint a) public returns(bool) {
      if (a > 100) {
          value = true;
          return value;
      }
      else {
          value = false;
          return value;
      }
  }

  /* Operators
  ! (Logical negation)
  &&(logical conjunction,"and")
  ||(logical disjunction, "or")
  == (equality)
  != (inequality)
  */
}
