//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract State {
    uint public Token; //public enables us to call from outside
    string public  Bitcoin; //state vars cost GAS in the blockchain
    function f1() public {
        uint eth = 100;
        Token = eth; //Local vars are only for the functions only so will not cost any GAS
        string memory satoshi = "nakamoto"; //from Solidity 0.5 whenever we declare a string need to include memory key word
        Bitcoin = satoshi;
    }
}

// When calling the state vars from outside if one needs to call the local vars associated with then we need to first call the function then Vars
