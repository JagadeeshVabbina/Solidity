//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Error_Exception {
    address public owner;
    uint public balance;

    constructor () {
        owner = msg.sender;
    }

    function selfDestruct(address payable _address) public {
        require(msg.sender == owner,"only owner can run this function"); //checking pre condition
        assert(address(this).balance != 0); //checking internal state
        selfdestruct(_address);
    }

    function receiveEth() public payable returns(uint) {
        balance = address(this).balance;
        revert("halt this execution here");
        return balance;
    }
}

// 2. Error_Exception_Handling
contract EEH2 {
    address public contract_owner;
    uint public balance;

    constructor() {
        contract_owner = msg.sender;
    }

    function selfDestruct2(address payable _address) public {
        require(msg.sender == contract_owner,"Only contract owner can run this function");
        assert(address(this).balance != 0);
        selfdestruct(_address);
    }

    function receiveEth2() public payable returns(uint) {
        balance = address(this).balance;
        revert("Halt this execution");
        return balance;
    }
}

// 3.
contract EEH3 {
    address public contract_owner;
    uint public balance;

    constructor() {
        contract_owner = msg.sender;
    }

    function selfDestruct3(address payable _address) public {
        require(msg.sender == contract_owner,"Only contract owner can run this function");
        assert(address(this).balance != 0);
        selfdestruct(_address);
    }

    function receiveEth3() public payable returns(uint) {
        balance = address(this).balance;
        revert("Halt this Execution");
        return balance;
    }
}

// 4.
contract EEH4 {
    address public contract_owner;
    uint public balance;

    constructor() {
        contract_owner = msg.sender;
    }

    function selfDestruct4(address payable _address) public {
        require(msg.sender == contract_owner,"Only contract_owner can execute this function");
        assert(address(this).balance != 0);
        selfdestruct(_address);
    }

    function receiveEth4() public payable returns(uint) {
        balance = address(this).balance;
        revert("Halt this execution");
        return balance;
    }
}

// 5.

contract EEH5 {
    address public contract_owner;
    uint public balance;

    constructor() {
        contract_owner = msg.sender;
    }

    function selfDestruct5(address payable _address) public {
        require(msg.sender == contract_owner,"only contract_owner can execute this function");
        assert(address(this).balance != 0);
        selfdestruct(_address);

    }

    function receiveEth5() public payable returns(uint) {
        balance = address(this).balance;
        revert("Halt this execution");
        return balance;
    }
}

