//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract addressDataTypes {
    address public contract_owner;  //can only check balance
    address payable public recipient_address; //receives ether
    uint public transfer_amount;
    uint public recipient_balance;


    constructor() {
        contract_owner = msg.sender;
    }

    function transferEther(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance=recipient_address.balance;
        return recipient_balance;

    }
}

