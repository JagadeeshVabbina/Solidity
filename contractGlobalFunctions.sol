//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract ContractFNs {
    //this :- it represents the current smart contract
    function getSCbal() public view returns(uint) {
        return address(this).balance;
    }

    //set some bal
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }

    //selfdestruct:- it destructs the contract and transfers the funds to the provided address
    function selfDestructSC(address payable _address) public {
        selfdestruct(_address);
    }
}

// 2.
contract ContractFns2 {
    //this.
    function getSCbal() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct2(address payable _address) public payable {
        selfdestruct(_address);
    }

    //msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }
}

// 3.
contract ContractFns3 {
    //this
    function getSCbal() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct3(address payable _address) public {
        selfdestruct(_address);
    }

    //msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }
}

// 4.
contract ContractFn4 {
    //this 
    function getSCbal() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct4(address payable _address) public {
        selfdestruct(_address);
    }

    //msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }
}

// 5.
contract ContractFns5 {
    //this 
    function getSCbal() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct5(address payable _address) public {
        selfdestruct(_address);
    }

    //msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }
}
