//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract varsintBool {
    int8 public signedint8 = 127; //range is -128 to 127  (2**8 = 256); default value is Zero
    uint8 public  unsigneduint8 = 255; //range is 0 to 255; accepts only positive numbers; default is 0
    bool public flag = true; // default value is false

    function setintBool(int8 _signedint8, uint8 _unsigneduint8, bool _flag) public {
        signedint8 = _signedint8;
        unsigneduint8 = _unsigneduint8;
        flag = _flag;


    }

}

