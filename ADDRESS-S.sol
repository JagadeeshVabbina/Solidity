//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;
contract Address{
    address public myAddress;
    address payable public myMetamaskAddress; //payable keyword is required to receive ether
    //myMetamaskAddress.balance
    //myMetamaskAddress.transfer
    //myMetamaskAddress.send

    function setmyMetamaskAddr(address payable _myMetamaskAddress) public {
        myMetamaskAddress = _myMetamaskAddress;
    }
}
