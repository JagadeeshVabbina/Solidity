//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.14;
contract MappingExample {
    mapping(address => uint) balances;

    function setBalance(uint _balance) public {
        balances[msg.sender] = _balance;

    }

    function getBalance(address _address) public view returns(uint) {
        return balances[_address];

    }
}
