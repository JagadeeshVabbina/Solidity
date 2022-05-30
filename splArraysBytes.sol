//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract SpecialArray {
    bytes public splbytes = new bytes(0); //declaring bytes size

    function setBytes(bytes1 _value) public {
        splbytes.push(_value); //0x616263
    }

    function getLength() public view returns(uint) {
        return splbytes.length;
    }
}
