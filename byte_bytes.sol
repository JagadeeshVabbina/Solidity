//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract bytesByte {
    bytes1 public a = 0x12;
    bytes2 public b = 0x1234;

    function compare() public view returns(bool) {
        return a > b;
    }

    function bitOperations() public view returns(bytes2) {
        return a & b;
    }

    function leftShift() public view returns(bytes1) {
        return a << 1;
    }

    function rightShift() public view returns(bytes1) {
        return a >> 1;
    }
}
