//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;
contract constants {
    //Coding convention is to declare constant var in UPPERCASE
    //21442 gas
    address public constant MY_ADDRESS = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
    uint public constant MY_UINT = 3;
}

contract vars {
    //23553 gas
    address public my_address = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
}

//by declaring state variables as constants , gas can be reduced
