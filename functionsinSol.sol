//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

/** @title setter and getter fucntions */
contract setrgetrFun {
int public var1;
int public var2;

//getter function
//function_keyword function_name(arguments/parameters/local vars) visibility_qualifiers activity_qualifier 
//returns(return type and var_name)
//
function getfun() public view returns(int _total) {
    _total = var1 + var2;
    return _total;

}


//setter function 

function setfun(int _var1,int _var2) public {
    var1 = _var1;
    var2 = _var2;

}

}



