//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;
contract Counter {
    uint public count;

    //function to increment
    function inc() external {
        count += 1;
    } 
    
    //function to decrement
    function dec() external {
        count -= 1;
    }
}
