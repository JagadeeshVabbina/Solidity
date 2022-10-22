//SPDX-License-Identifier:GPL-3.0
pragma solidity >0.7.0 <=0.9.0;
contract sVars {
    //1.State 2.Local 3.Global variables
    //state variables are stored in Ethereum blockchain.these are stored inside contract and outside functions and cost gas
    uint distance = 28;
    uint age = 17;

    function varFun() public pure returns(uint){
        //local variable-exists only when function is executing,do not cost gas
        //scope is within the function only
        uint amount = 10000000;
        return amount;
    }
}

