//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;
contract dynamicArrays {
     int[] public num1;
     
     // set int array with push member
    function setInt(int _num1) public {
        num1.push(_num1);
    }

    //get the length
    function getIntLen() public view returns(uint) {
        return num1.length;
    }

    //pop member

    function popInt() public {
        num1.pop();
    }
}

// 2.

contract arraDyn {
    string[] public dynStr;

    //push
    function setStr(string memory _synStr) public {
        dynStr.push(_synStr);
    }

    function getStrln() public view returns(uint) {
        return dynStr.length;
    }

    //pop
    function popStr() public {
        dynStr.pop();
    }
}

// 3.

contract boolDynA{

    bool[] public isPaid;

    //push
    function setBoolA(bool _isPaid) public {
        isPaid.push(_isPaid);
    }

    //length

    function getLenBool() public view returns(uint) {
        return isPaid.length;
    }

    //pop
    function popBool() public {
        isPaid.pop();
    }
}

// 4.

contract ArrayDynamic {
    address[] public owners;

    //set owners with push member
    function setOwners(address _owners) public {
        owners.push(_owners);
    }

    // length

    function ownersLen() public view returns(uint) {
        return owners.length;
    }

    //pop

    function popOwners() public {
        owners.pop();
    }
}

// 5.

contract uintDArray {
    uint[] public age;
    // set age with push member

    function setAge(uint _age) public {
        age.push(_age);
    }

    //get length of an array.

    function getlenA() public view returns(uint) {
        return age.length;
    }

    //pop member

    function popAge() public {
        age.pop();
    }
}
