//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract Modifiers {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly{
        if (msg.sender == owner) {
            _;
        }
            
    }

    function selfDestruct(address payable _address) ownerOnly public {
        selfdestruct(_address);
    }

    function receiveEth() public payable returns(uint) {
        balance = address(this).balance;
        return balance;
    }
}

// 2.

contract Modifiers2 {
    address public contract_owner;
    uint public contract_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    modifier ownerOnly {
        if (msg.sender == contract_owner) {
            _;
        }
    }

    function selfDestruct(address payable _address) ownerOnly public {
        selfdestruct(_address);
    }

    function receiveEth() public payable returns(uint) {
        contract_balance = address(this).balance;
        return contract_balance;
    }
}

// 3. 
contract Modifiers3 {
    address public contract_owner;
    uint public contract_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    modifier ownerOnly {
        if (msg.sender == contract_owner) {
            _;
        }
    }

    function selfDestruct(address payable _address) ownerOnly public {
        selfdestruct(_address);
    }

    function receiveEth() public payable returns(uint) {
        contract_balance = address(this).balance;
        return contract_balance;
    }
}

// 4.

contract Modifiers4 {
    address public contract_owner;
    uint public contract_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    modifier ownerOnly {
        if (msg.sender == contract_owner) {
            _;
        }
    }

    function selfDestruct(address payable _address) ownerOnly public {
        selfdestruct(_address);
    }

    function receiveETh() public payable returns(uint) {
        contract_balance = address(this).balance;
        return contract_balance;
    }
}

// 5.
contract Modifiers5 {
    address public contract_owner;
    uint public contract_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    modifier ownerOnly {
        if (msg.sender == contract_owner) {
            _;
        }
    }

    function selfDestruct(address payable _address) ownerOnly public {
        selfdestruct(_address);
    }

    function receiveEth() public payable returns(uint) {
        contract_balance = address(this).balance;
        return contract_balance;
    }
}
