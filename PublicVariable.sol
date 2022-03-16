//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;
contract SelfTaught {
    uint public Aug31; //Here Variable will be depoloyed as a function
    function BCDev() external view returns(uint) {
        return Aug31;
    }
}

