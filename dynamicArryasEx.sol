//SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;
contract dynamicArray {
    uint[] public time;
    bytes1[] public alphabet; //stores array of bytes1 type valus
    //bytes[] public alphabet;
//bytes needed memory keyword in parameters
    function setalphabet(bytes1 _alphabet) public {
        alphabet.push(_alphabet);

    }

    function getLengthalpha() public view returns(uint) {
        return alphabet.length;
    }

    function popAplhabet() public {
        return alphabet.pop();
    }




}
