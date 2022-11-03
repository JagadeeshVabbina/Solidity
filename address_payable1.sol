// 3.

contract NFTAddr {
    address public contract_owner2;
    address payable public recipient_address2;

    uint public transfer_amount2;
    uint public recipient_balance2;

    constructor() {
        contract_owner2 = msg.sender;
    }

    function setNFT(address payable _recipient_address2) public payable returns(uint) {
        recipient_address2 = _recipient_address2;
        transfer_amount2 = msg.value;
        recipient_address2.transfer(transfer_amount2);
        recipient_balance2 = recipient_address2.balance;
        return recipient_balance2;

    }
}

// 4. 

contract ExtOwnedAcc {
    address public contract_owner3;
    address payable public recipient_address3;

    uint public transfer_amount3;
    uint public recipient_balance3;

    constructor() {
        contract_owner3 = msg.sender; 
    }

    function sendAddr(address payable _recipient_address3) public payable returns(uint) {
        recipient_address3 = _recipient_address3;
        transfer_amount3= msg.value;
        recipient_address3.transfer(transfer_amount3);
        recipient_balance3 = recipient_address3.balance;
        return recipient_balance3;

    }
}

// 5.

contract cryptoAJ {
    address public contract_owner4;
    address payable public recipient_address4;

    uint public transfer_amount4;
    uint public recipient_balance4;

    constructor() {
        contract_owner4 = msg.sender;
    }

    function cryptoAddr(address payable _recipient_address4) public payable returns(uint) {
        recipient_address4 = _recipient_address4;
        transfer_amount4 = msg.value;
        recipient_address4.transfer(transfer_amount4);
        recipient_balance4 = recipient_address4.balance;
        return recipient_balance4;
    }
}
