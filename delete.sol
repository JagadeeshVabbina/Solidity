//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract KILL {

    constructor() payable {}

    function kill() public {
        selfdestruct(payable(msg.sender));
    }

    function testCall() public pure returns(uint) {
        return 8;
    }
}

contract CA {
    function Balance() public view returns(uint) {
        return address(this).balance;
    }

    function kill(KILL _kill) public {
        _kill.kill();
    }
}

//2.

contract SD {

    constructor() payable {}

    function sd() public {
        selfdestruct(payable(msg.sender));
    }

    function TestContract() public pure returns(uint) {
        return 0;
    }
}

contract getEth {

    //instant of contract address
    function getEther(SD _sd) public {
        _sd.sd();
    }

    function readBal() public view returns(uint) {
        return address(this).balance;
    }
}

// 3.

contract contractA {
    constructor() payable {}

    function deleteContract() public {
        selfdestruct(payable(msg.sender));
    }

    function testContract() public pure returns(string memory) {
        return "Contract is not destructed";
    }
} 

contract contractB {

    function myBalance() public view returns(uint) {
        return address(this).balance;
    }

    function getAssets(contractA _contractA) public {
        _contractA.deleteContract();
    }
}

//4
contract contract1 {
    constructor() payable {}

    function destructContract() public {
        selfdestruct(payable(msg.sender));
    }

    function testing() public pure returns(uint) {
        return 70;
    }
}

contract contract2 {
    function bal() public view returns(uint) {
        return address(this).balance;
    }

    function forceEth(contract1 _contract1) public {
        _contract1.destructContract();
    }
}

// 5.
contract DeFi {
    constructor() payable {}

    function selfDestruct() public {
        selfdestruct(payable(msg.sender));
    }

    function getStatus() public pure returns(uint) {
        return 30;
    }
}

contract NFTs {
    function funds() public view returns(uint) {
        return address(this).balance;
    }

    function getFunds(DeFi _DeFi) public {
        _DeFi.selfDestruct();
    }
}
