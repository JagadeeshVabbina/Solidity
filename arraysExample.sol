//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
//fixed type arrays example
contract staticArray {
    bytes1 public static1 = 'a';
    bytes4 public static2 = "abcd";

    uint[3] public debts = [3,8,2];
    int[4] public age;

    function getdebts(uint i) public view returns(uint) {
        return debts[i];
    }

    function setAge(uint j,int _age) public {
        age[j] =_age;

    }
}
