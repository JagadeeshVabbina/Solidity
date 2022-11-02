//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract sendEther {
    address public contract_owner;
    address payable public recipient_address;

    uint public transfer_amount;
    uint public recipient_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    function sendCurrency(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }
}

// 2.

contract sendToReceiver {
    address public contract_owner1;
    address payable public recipient_address1;

    uint public transfer_amount1;
    uint public recipient_balance1;

    constructor() {
        contract_owner1 = msg.sender;
    }

    function sendtoReceiver(address payable _recipient_address1) public payable returns(uint) {
        recipient_address1 = _recipient_address1;
        transfer_amount1 = msg.value;
        recipient_address1.transfer(transfer_amount1);
        recipient_balance1 = recipient_address1.balance;
        return recipient_balance1;

    }
}
