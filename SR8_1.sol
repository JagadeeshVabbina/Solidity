//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
//events
contract Events {
    address public contract_owner;
    uint public toAccBal;

    event Transferred(address,address,uint);

    function sendTo(address payable _toAddr) public payable {
        contract_owner = msg.sender;
        _toAddr.transfer(msg.value);
        toAccBal = _toAddr.balance;

        emit Transferred(contract_owner,_toAddr,msg.value);
    }
}

//Modifiers
contract FunModifiers {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly {
        if (msg.sender == owner) {
            _;
        }
    }

    function sendEth() public payable returns(uint) {
        balance = address(this).balance;
        return balance;
    }

    function selfDestruct(address payable _addr) ownerOnly public {
        selfdestruct(_addr);
    }
}

// Control Structures
contract controls {

    event LogLoop(uint);

    //ifelse
    function ifElse(uint x,uint y) public pure returns(uint result) {
        if (x > y) {
            result = x - y;
            return result;
        }

        else if(x < y) {
            result = y - x;
            return result;
        }
    }

    //while Loop
    function WhileLoop(uint counter) public {
       uint  i = 0;
        while ( i < counter ) {
            emit LogLoop(i);
            i = i + 1;
        }
    }

    //do While Loop
    function doWhile(uint counter) public {
        uint i = 0;
        do {
            emit LogLoop(i);
            i = i + 1;
        }while(i < counter);        
    }

    //for Loop
    function forLoop(uint counter) public {
        for (uint i;i < counter;i++) {
            emit LogLoop(i);
        }
    }

    //break
    function breakStatement(uint counter) public {
        for (uint i =0;i < counter;i++) {
            if (i == 4) {
                break;
            }
            emit LogLoop(i);
        }
    }

    //continue
    function continueStatement(uint counter) public {
        for (uint i = 0; i < counter;i++) {
            if ( i == 4) {
                continue;
            }
            emit LogLoop(i);
        }

        uint j = 0;
        while (j <counter) {
            j = j+1;
            if (j == 4) {
                continue;
            }
            emit LogLoop(j);
        }
    }

}

// Operators 
contract Operators {
    // > < >= <= == != ! && ||
    // + - / * ** %
    function OperatorsSol(uint x,uint y) public pure returns(uint z) {
        if ( x >= 5 && y <= 10) {
            z = y - x;
            return z;
        }
        else if ( x != 5 || y != 0) {
            z = x + y;
            return z;
            
        }
    } 
}
