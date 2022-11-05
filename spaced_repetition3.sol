//SPDX-License-Identifier: MIT
/// @author Smart Contract Developer
pragma solidity ^0.8.17;
contract Intro {
    /* Solidity is an object oriented programming language designed to target EVM.
    ie Ethereum Virtual Machine.it is influenced by C++,python and Javascript.
    it is statically typed,supports inheritence and user defined data types.
    Use Cases:- smart contracts for Voting,Crowdfunding,Bliend Auction...etc */
}

//basic Structure of a smart contract.

contract SolidityBS{
    string public Name;
    uint public Experience;

    //constructor is a function that executes once at the time of deployment and it will be not to hard code sstate variables.
    constructor(string memory _Name,uint _Experience) {
        Name = _Name;
        Experience = _Experience;
    }

    //function to set the state variables.
    /** @dev it sets the state variables
    * @param _Name name of the employee
    * @param _Experience Expertise of the employee. */
    function setState(string memory _Name,uint _Experience) public {
        Name = _Name;
        Experience = _Experience;

    }

    //get the state value.
    function getState() public view returns(string memory,uint) {
        return (Name,Experience);
    }    
}

/*  Varibles:- 1. State Variables:- defined at contract level,stored in blockchain ledger and cost Gas.
               2. Local Variables:- defined at function level,stored in temporray memory,do not cost gas, scope within the function only. */


/* Data types:- 1. Value Type:- holds value directlty within storage/memory.
                                can not take more than 32 bytes(256bit);
                                int,uint,bool,address,bytes and enum.


                2.Reference Type:- holds location in reference to the value stored.
                                   can take more than 32 bytes(256 bit)
                                   strings,structs, Arrays(fixed/dynamic) and Mapping(Key/Pair). */


// Value data Type:-

contract ValueType {
    int8 public int8Var=127 ; // -2**7 to 2**7 -1. 
    int16 public int16Var = 10000;
    uint8 public uint8Var = 255;
    bool public passion = true; //default bool value is false.
    address public Nomad = 0x34Afc7D2b85ABc3f45261A48Ce245C106BE05d04; // externally owned and contract.
    bytes1 public b1 = 'b';
    bytes2 public b2 = 'ab';
    bytes3 public b3 = 'abc';
    bytes4 public b4 = 0x25262728;

    //function to read the bytes value based on index.
    function getBytes(uint i) public view returns(bytes1) {
        return b4[i];
    }

    // function to get the length of the bytes variable.
    function getLenb() public view returns(uint) {
        return b4.length;
    }

    //enum

    enum claimStatus {Approved,Rejected} 

    claimStatus public status;

    function setClaim(uint _claim) public {
        if (_claim > 10) {
            status = claimStatus.Rejected;
        }

        else if (_claim < 10) {
            status = claimStatus.Approved;
        }       
        
    }

        //get claimStaus.
        function getStatus() public view returns(claimStatus) {
            return status;
            }
}   

//solidity- inheritance and visibility Qualifiers

contract ProjectA {
    uint public value = 5;

    //public:- can be accessed from external,internal and derived contracts as well.

    function setPub() public view returns(uint) {
        // uint _ext = setExt(); This is an external function.
        return value;
    }

    //external:- can be accessed from external,visible from derived and not accessed from within the same contract.
    function setExt() external view returns(uint) {
        // uint _pvt = setPvt(); can be accessed as from within
        return value;
    }

    //private:- can be accessed only within the contract
    function setPvt() private view returns(uint) {
        // uint _int = setInt(); can be accessed as from within
        return value;
    }

    //internal:- can be accesed from within and from derived contracts.
    function setInt() internal view returns(uint) {
        return value;
    }



}

contract ProjectB {

    ProjectA public a = new ProjectA();
    uint public pub = a.setPub();
    uint public ext = a. setExt();
    // uint public pvt = a.setPvt(); This is a private function.
    // uint public intr = a.setInt(); This is an internal function.


}

contract ProjectC is ProjectA {
    // uint public pvt = setPvt(); This is a private function.
    uint public intr = setInt();
}

// Activity Qualifiers

contract ViewPure {
    uint public var1 = 21;
    uint public var2 = 7;

    //view:- can access the state , cant modify.

    function Add() public view returns(uint _total) {
        _total = var1+var2;
        return _total;
    }

    //pure:- cant read/modify the state.
    function LocalVars() public pure returns(uint _sum){
        _sum = 20+ 9;
        return _sum;
    }

    //fallback and receive

    fallback() external payable {


    }

    receive() external payable {


    }
}

// address_ addressPayable.

contract Transaction{ 
    address public contract_owner;
    address payable recipient_address;

    uint public transfer_amount;
    uint public recipient_balance;

    constructor () {
        contract_owner = msg.sender;
    }

    //function to initiate the trasaction.

    function sentTo(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }
}

// Arrays.
contract arraysFixDyn {
    uint[2] public year=[1994,2022];
    uint[3] public cat=[17,25]; //length is 3. Fixed array has length member only.

    //get value  by index
    function getValue(uint i) public view returns(uint) {
        return year[i];
    }

    //get the length of the array
    function getL() public view returns(uint) {
        return cat.length;
    }

    //to add values to fixed arrays
    uint[3] public time ;
    function setTime(uint i,uint _time) public {
        time[i] = _time;

    }

    // Dynamic arrays

    uint[] public dyn1 = [25,26,27,28];
    uint[] public dyn2;

    //set dyn2
    function setdyn(uint _dyn2) public {
        dyn2.push(_dyn2);
    }

    //function to get dyn2 length
    function getDynL() public view returns(uint) {
        return dyn2.length;
    }

    //function to pop dyn2.
    function popDyn() public {
        dyn2.pop();
    }
}

//structs

contract structInArr {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;

    //set cryptoTrading.
    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.traderId= _traderId;
        cryptoTrading.quantity=_quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;

    }

    //get CT
    function getCT() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    // array consists of struct.
    Trading[] public CTA;
    //function to set CTA.

    function setCTA(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        Trading memory tempStruct = Trading ({
            traderId:_traderId,
            quantity:_quantity,
            price: _price,
            traderName : _traderName
        });
        CTA.push(tempStruct);

    }
}


