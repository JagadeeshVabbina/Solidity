//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract setget {
    //Declare state variables but remeber this action costs gas, so use the optimal ones
    uint public var1;
    uint public var2;
    //setter function 
    function setValues(uint _var1,uint _var2) public {
        var1 = _var1;
        var2 = _var2;
    
    }
    //getter function
    /** pure function ensures that the state will not be read or changed while
    view ensures that the state will not be changed */
    function getValues() public view returns(uint _sum) {
        _sum = var1 + var2; //operations with int and uint is not accepted 
    }

}
