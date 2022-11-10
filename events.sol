//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract events {
    //event is declared at contract level and called at function level
    address public fromAddress;
    uint public toAccBal;

    event Transferred(address,address,uint);

    function transfer(address payable _toAddr) public payable {
        fromAddress = msg.sender;
        _toAddr.transfer(msg.value);
        toAccBal = _toAddr.balance;
        emit Transferred(fromAddress,_toAddr,msg.value);
    }
}

// 2. 
contract events2 {
    address public fromAccount;
    uint public toAccBal;

    event Transferred(address,address,uint);

    function transfer(address payable _toAddress) public payable {
        fromAccount = msg.sender;
        _toAddress.transfer(msg.value);
        toAccBal = _toAddress.balance;
        emit Transferred(fromAccount, _toAddress, msg.value);

    }
}

// 3.
contract events3 {
    address public fromAddress;
    uint public toAccBal;

    event transferred(address, address, uint);

    function transfer(address payable _toAddr) public payable {
        fromAddress = msg.sender;
        _toAddr.transfer(msg.value);
        toAccBal = _toAddr.balance;

        emit transferred(fromAddress, _toAddr ,msg.value);
    } 
}

// 4.

contract events4 {
    address public fromAddress;
    uint public toAccBal;

    event Transferred(address, address, uint);

    function transfer(address payable _toAddr) public payable {
        fromAddress = msg.sender;
        _toAddr.transfer(msg.value);
        toAccBal = _toAddr.balance;

        emit Transferred(fromAddress,_toAddr,msg.value);
    }
}

// 5.

contract events5 {
    address public fromAddress;
    uint public toAccBal;

    event Transferred(address, address, uint);

    function trannsfer(address payable _toAddr) public payable {
        fromAddress = msg.sender;
        _toAddr.transfer(msg.value);
        toAccBal = _toAddr.balance;

        emit Transferred(fromAddress,_toAddr,msg.value);
    }
}
