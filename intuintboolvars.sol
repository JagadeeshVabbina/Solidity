//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract Vars {
    int8 public int8var = 27; //int8 storeds values between -128 to 127
    uint8 public uint8var = 10; //uint8 stores from 0 to 255
    uint16 public uint16var =10000;
    bool public booleanvar = true;
    function myFun(int8 _int8var,uint8 _uint8var,bool _booleanvar) public {
        int8var = _int8var;
        uint8var = _uint8var;
        booleanvar = _booleanvar;

    } 
}
