//SPDX-License-Identifier: GPL-3.0
///@author smart contract developer.
/** @title fundamentals of solidity programming language */
pragma solidity ^0.8.17; //compiler version ^carror >=0.8.17 <0.9.0 , No breaking changes until 0.9.0.
contract Reinforcement8 { // identified with contract address.
    /* Solidity is a high level object oriented programming language.it is designed
    to target Ethereum Virtual Machine.it is statically typed ,supports inheritance and user defined 
    data types.influenced by C++,Python and Javascript
    use cases:- smart contracts for Voting,crowdfunding and blind auction.
    Solidity SourceCode --> SolC --> ABI & ByteCode --> Deployed & Executed on EVM
    * ABI:- Application binary interface(used by external services ti interact with the smart contract.
    */

    // basic structure of a solidity smart contract.
    uint public empAge;
    string public empName;

    // constructor:- is a function that executes once at the time of deployment.it is used not to hard code the state variables.
    constructor(uint _empAge,string memory _empName) {
        empAge = _empAge;
        empName = _empName;
    }

    // function to set State variables
    function setState(uint _empAge,string memory _empName) public {
        empAge = _empAge;
        empName = _empName;
    }

    //read the state / getter function.
    function getState() public view returns(uint,string memory) {
        return (empAge,empName);
    }
}

//comments in Solidity :- Non executable statements
// This is a single line comment
/* This is a 
Multi line 
commenting in solidity*/
/// netstec and doxygen commenting /** */ with tags
/** @author Smart contract developer
* @title Commenting in Solidity Programming language. */ //directly above function declarations.
contract CommntsSol {
    //state variables
    uint public var1;
    uint public var2;

    /** @dev it sets the state variables 
     @param _var1 price variable; param is case sensitive _Var1 will cause error.
     @param _var2 quantity variable
    */
    function setState(uint _var1,uint _var2) public {
        var1 = _var1;
        var2 = _var2;
    }
}

contract VariablesinSol {
    /* State Variables:- declared at contract level.
                         Stored permanently in Blockchain ledger.
                         Cost Gas.

       Local Variables:- declared at function level.
                         stored in temporary memory.
                         Do not cost Gas.
                         Scope is within the function only.                  
                         
    */

    //state variables
    address public Contract_Addr = 0xd9145CCE52D386f254917e481eB44e9943F39138;
    string public chain = "Ethereum Blockchain";

    //local variables
    function AddVars(uint _num1,uint _num2) public pure returns(uint _sum) {
        _sum = _num1 + _num2;
        return _sum;
    }

   /*  function checkLoc() public returns(uint) {
        return _num1; //scope is within the function only.
    } */
}

//dataTypes
contract DataTypes {
    /*  1. Value DataTypes:- holds values directly within storage/memory.
                             can not take more than 32 bytes(256 bits)
                             int,uint,bool,address,bytes and enum

         2. Reference Type:- holds address of location where value is stored.
                              can store more than 32 bytes(256 bit)
                              strings,structs, Arrays(fixed/dynamic) and Mappings(Key/Value)                    
    */

    //value Type
    int8 public varInt8 = -128; //positive and negative numbers -2**7 to 2**7 - 1; default value is 0.
    uint8 public varUint8 = 255; // non negative numbers 0 to 2**8 - 1; default value is 0.
    uint16 public varUint16 = 10000; // 0 to 2**16 - 1;
    bool public isPaid = true; // default value is false.
    address public contract_owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //20 byte Hexadecimal Value.
    bytes1 public b1 = 'a'; //stores as binary value, 8 bits
    bytes2 public b2 = 'ab'; // 16 bits.
    bytes public b3 = 'abc'; //fixed size 3.
    bytes4 public b4 = 0x25262728;
    //get bytes by index value
    function getB(uint i) public view returns(bytes1) {
        return b3[i];
    }

    //get bytes variable length
    function getBLength() public view returns(uint) {
        return b4.length;
    }

    //address - payable,transfer,balance.
    address public owner ;
    address payable public recipient_address;
    
    uint public transfer_amount;
    uint public recipient_balance;

    constructor() {
        owner = msg.sender;
    }

    //initate the transaction.
    function sendEthTo(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }  

    //enum
    enum claimStatus { Approved,Rejected} 
    claimStatus public status;

    //set claim logic
    function setClaim(uint _claim) public {
        if (_claim > 1000) {
            status = claimStatus.Rejected; //iddentified with index value.
        }

        else if(_claim < 1000) {
            status = claimStatus.Approved;
        }
    }

    //get Claim
    function getClaimStatus() public view returns(claimStatus) {
        return status;
    }
}

// Inheritance and Visibility Qualifiers in Solidity
contract companyA {
    uint public ROI = 8;

    //public:- can be accessed from external, internal and from derived contracts as well.
    function setPub() public view returns(uint) {
        // uint _ext = setExt();
        return ROI;
    }

    //external :- can be accessed from external and visible from derived contracts
    function setExt() external view returns(uint) {
       //  uint _pvt = setPvt(); // can be accessed as from within the contract
        return ROI; 
    }

    //private:- can be accessed only from within the contract.
    function setPvt() private view returns(uint) {
        return ROI;  
    }

    //internal :- can be accessed from within the contract and derived contract.
    function setIntr() internal view returns(uint) {
        return ROI;
    }
}

contract companyB {
    companyA public a = new companyA();
    uint public pub = a.setPub();
    uint public ext = a.setExt();
    // uint public pvt = a.setPvt(); This is a private function.
    // uint public intr = a.setIntr();  This is an internal function.
}

contract companyC is companyA {
    // uint public pvt = setPvt();
    uint public intr = setIntr();

}

//Activity Qualifier
contract ActQua {
    /* 1. view :- can read the state but can not modify it.
        2. pure:- can not read the state and can not modify it.
    */

    fallback() external payable {


    }

    receive() external payable {


    }

    string public name = "Blockchain Developer";
    bytes public bytesName = bytes(name);
}

// arrays (fixed/dynaic)
contract ArraysInSol {
    //fixed
    uint[3] public year = [2019,2020,2021];
    uint[4] public Projects;

    //set Projects
    function setProjects(uint i,uint _projects) public {
        Projects[i] = _projects;
    }

    //length
    function getPLength() public view returns(uint) {
        return Projects.length;
    }

    //dynamic
    uint[] public Iterations;
    function setIt(uint _Iterations) public {
        Iterations.push(_Iterations);
    }

    function LenIterations() public view returns(uint) {
        return Iterations.length;
    }

    //pop
    function PopIt() public {
        Iterations.pop();
    }    
}

//Structs 
contract StructsSol {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;

    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public  {
        cryptoTrading.traderId = _traderId; //dot variable
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;

    }

    function getCT() public view returns(uint,uint,uint,string memory) {
        return(cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    // array of struct
    Trading[] public CTA;
    //set CTA
    function setCTA(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        Trading memory tempStruct = Trading({
            traderId:_traderId,
            quantity:_quantity,
            price:_price,
            traderName:_traderName
        });
        CTA.push(tempStruct);
    }
}

//Mapping
contract MappingSol {
    mapping(uint => string) public names;

    constructor() {
        names[1] = "Employee1";
        names[2] = "Employee2";
        names[3] = "Employee3";
    }

    mapping(uint => address) public owner;

    //set owner
    function setOwner(uint i ,address _address) public {
        owner[i] = _address;
    }

    struct book {
        string title;
        uint year;
    }
    
    mapping(uint => book) public books;

    function setBooks(uint key,string memory _title,uint _year) public {
        books[key] = book(_title,_year);
    }
}


