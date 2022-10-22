//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract intUint {
    //unsigned integers only positive numbers >=0
    //signed integers negative and positive numbers >0,<0,=0
    uint public u = 123; //uint = uint256 0 to 2**256 - 1
                         //       uint8 0 to 2**18 - 1
                         //       uint16 0 to 2**16 - 1

    int public i = -123; //int = int256 -2**255 to 2**255 - 1
                         //      int8 -2**7 to 2**7 - 1
                         //       int16 -2**15 to 2**15 - 1
     //uint8 public u1= 256;
     //int8 public i1= -129; out of range                    

     int public minint = type(int).min;
     int public maxint = type(int).max;
     int8 public minint8 = type(int8).min;
     int8 public maxint8 = type(int8).max;   
function getintUint(uint _u,int _i) public {
    u = _u;
    i = _i;

}

}
