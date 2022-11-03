//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;
//Structs - Example
contract Neuroplasticity {
    string public Name;

    struct struct_Type {
        string Repetitions;
        uint NumOfRep;
        int[] Intensity;
    }

    struct_Type public Iterate;
    struct_Type[] public again;

    //struct_Type public DoitAgain = struct_Type(values);

    //function to call struct
    function setStruct() public {
        Iterate.Repetitions = "1000";
        Iterate.NumOfRep = 1000;
        Iterate.Intensity.push(28);
    }
}

// 2. Structs

contract solStruct {
    bytes32 public language = "solidity";

    struct smartC {
        address owner;
        string receiver_Name;
        uint[] amount;
    }

    smartC public Dunning_Kruger;
    smartC[] public Imp_Synd;

    //function to set the struct

    function setDK() public {
        Dunning_Kruger.owner = msg.sender;
        Dunning_Kruger.receiver_Name = "Amateur";
        Dunning_Kruger.amount.push(28);
    }
        
    
}

//Arrays 

contract DaysOfWeek {
    string public name = "First Week";
    uint[] public week1 = [1,2,3,4,5,6,7];
    int[] public week2;
    string[2] public week3 = ["Intensity","Quality"];

    function setArray(int _week2) public {
        week2.push(_week2);
    }

    // to get the length of an array.

    function getLengthA() public view returns(uint) {
        return week2.length;
    }

}

//BasicSSC

contract startUpCrypto {
    string public NameOfC;
    uint public YearOfLaunch ;


    //constructor

    constructor(string memory _NameOfC,uint _YearOfLaunch) {
        NameOfC = _NameOfC;
        YearOfLaunch = _YearOfLaunch;

    }

    function setC(string memory _NameOfC,uint _YearOfLaunch) public  {
        NameOfC = _NameOfC;
        YearOfLaunch = _YearOfLaunch;

    }

    //getter

    function getC() public view returns(string memory ,uint) {
        return (NameOfC ,YearOfLaunch);
    }
}

//comments
/** @author smartContract Developer
* @title commenting in solidity; non-executable statements. */

contract SolidityC {
    uint public age;

    //constructor

    constructor (uint _age) {
        age = _age;
    } 

    /// @dev function sets the state variable value
    /** @param _age local varible */

    function setC(uint _age) public {
        age = _age;
    }
    /* the following function reads
    the value from blockchain */

    function getC() public view returns(uint) {
        return age;
    }
}

//variables

contract VarsSD{
    //state variables, cost gas, stored in blockchain ledger permanently.

    string public orgName;
    uint public orgProfit;


    //local variables,do not cost gas,stored in temporary memory.

    function setVarsSD() public {
        string memory _orgName = "blockchain";
        uint _orgProfit = 10;
        orgName = _orgName;
        orgProfit = _orgProfit;
    }
}

//Data types:-
/* 1. Value Type:- holds  value directly within the storage/memory.
can not store more then 32 bytes(256 bit).
uint,int,bool,address,bytes,enum.

2. value data Type.
holds the address of the value stored.
can store more than 32 bytes(256 bit)
strings, structs, Arrays(Fixed/Dynamic) and Mapping(Key/Value). */


//Value DataTypes

contract ValueDT {
    string public SpecificKnowledge;
    uint8 public Expertise = 255; // 0 to 2 **8 -1
    int8 public DensityD=-128; //-2**7 to 2**7 -1;
    bool public decisive = true;

    uint8 public uint_max= type(uint8).max;
    uint8 public uint_min = type(uint8).min;

}

// inheritancec and visibility Qualifiers in solidity.

contract startupA {

    uint public PS = 28;

    //public:- can be accessed externally,internally and from derived contracts as well.

    function getPS1() public view returns(uint) {
       // uint _extPS2 = getPS2(); This is an external function,cant be called from within.
        return PS;
    }

    //external:- can be accesed from external and derived contracts not from within the same contract.

    function getPS2() external view returns(uint) {
        // uint prtPS3 = _getPS3(); can be accessed as from the within the same contract
        return PS;
    }

    //private:- only be accessed within the contract.

    function _getPS3() private view returns(uint) {
        // uint _getPS4 = getPS4(); can be accessed
        return PS;
    }

    //internal :- can be accessed from within and from derived contracts.

    function getPS4() internal view returns(uint) {
        return PS;
    }


}

contract startupB {

    startupA public sa = new startupA();
    uint public pubPS = sa.getPS1();
    uint public extPS = sa.getPS2();
    // uint public prtPS = sa._getPS3(); This is a private function.
    // uint public intrPS = sa.getPS4(); This ia an internal function.


}

contract startupC is startupA {

    // uint public prtPS = _getPS3(); This is a private function.
    uint public intrPS = getPS4();

}


// Activity Qualifier 

contract ActQ{

    bytes32 public Experience = "chr";

    //view :- can read the state but can not modify.

    function getExp() public view returns(bytes32) {
        return Experience;
    }

    //pure :- cant read/modify the blockchain state.

    function getExp4() public pure returns(bytes32) {
        bytes32 _experience = "eight";
        return _experience;
    }

    //fallback and receive

    fallback() external payable {


    }

    receive() external payable {

    }
}


//address_addresspayable.

contract Eight{
    address public contract_owner;
    address payable public recipient_address;

    uint public transfer_amount;
    uint public recipient_balance;

    constructor () {
        contract_owner = msg.sender;
    }

    //function to initiate the transaction.

    function sentTo(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }
}
