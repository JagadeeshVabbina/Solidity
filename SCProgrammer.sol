//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract ValueTypes {
    uint public u = 70; // uint = uint256 0 to 2**256 - 1;
    uint8 public u8 = 28; // 0 to 2**8 - 1;
    int public i = -8; //int = int256 -2**7 to 2**7 - 1.
    int16 public i16 = -28; // -2**15 to 2**15 - 1;

    uint8 public min = type(uint8).min;
    uint8 public max = type(uint8).max;
}

//State/Local Variables
contract StateLocal {
    //state vars:- are stored permanently on blockchain ledger.
    int public sVar1;
    bool public sVar2 ;
    address public sVar3;

    //local
    function lVars() public {
        int lvar1 = 28;
        bool lVar2 = true;
        //more code
        lvar1 += 29; //adds the value of right operand to variable and assigns the result to the variable
        lVar2 = false;
        sVar1 = lvar1;
        sVar2 = true;
        sVar3 = address(1);
    }
}

// counter
contract counter {
    int public count;

    //Increment
    function Inc() external {
        count += 1;
    }

    //Decrement
    function Dec() external {
        count -= 1;
    }
}

//defaults
contract defaultValue {
    uint public uintVar; // 0
    int public intVar; // 0 
    bool public boolean; //false
    address public owner; // 0x0000000000000000000000000000000000000000
    bytes32 public HexaDecimanl; //0x0000000000000000000000000000000000000000000000000000000000000000
}

//constant
//21420 Gas constant uses less gas.
contract constantSol {
    address  public constant MY_ADDRESS = 0xd7Ca4e99F7C171B9ea2De80d3363c47009afaC5F;
}


//23553  Gas
contract NotConstant {
    address public MY_ADDRESS = 0xd7Ca4e99F7C171B9ea2De80d3363c47009afaC5F;
}

//ifElse
contract ifElse {

    function ifElseFun(uint x) external pure returns(uint) {
        if (x < 10) {
            return 1;
        }
        else if (x < 20) {
            return 2;
        }        
            return 3;
        
    }

    function ternary(uint x) external pure returns(uint) {
        //if (x < 10) {
        //    return 1;
       // }
       // return 2;
        return x < 10 ? 1:2;
    }
}

//for Loop
contract Loops {

    function sum(uint n) external pure returns(uint) {
    uint sumofN ;
    for (uint i = 1;i <=n; i++) {
        sumofN +=i ;
    }
    return sumofN;
}
}



