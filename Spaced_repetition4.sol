//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.17;
/** @author Smart Contract Developer
* @title reinforcement of solidity */
//basic structure of solidiy smart contracts
contract Repetition {
/* state variables:- stored in blockchain ledger permanently and 
 state variables cost gas. */
  uint public worth;
  string public name;

  //constructor is a function that executes once at the time of deployment.
  constructor(uint _worth,string memory _name) {
      worth = _worth;
      name = _name;
  }

  /** @dev setter function 
  * @param _worth is a uint parameter
  * _name is a string parameter */
  //local varible scope is within the function only,they do not cost gas and they will stored in temporary memory.
  function setter(uint _worth,string memory _name) public {
      worth =_worth; 
      name = _name;
  }

  //getter function
  function getter() public view returns(uint,string memory){
      return (worth,name);
  }

  fallback() external payable {

  }

  receive() external payable {


  }
}

/* dataTypes 1. ValueType:- holds value directly within storage/memory.
                            can not take more than 32 bytes(256 bit).
                            int,uint,bool,address,bytes and enum.

            2.Reference Type:- olds the location of the stored value.
                               can take more than 32 bytes(256 bit).
                               strings,structs,arrays(fixed/dynamic) and Mapping(key/value).
*/

// value type
contract ValueTypes{
 int8 public myInt8 = 127; // -2**7 to 2**7 -1. default value is Zero
 uint8 public myUint8 = 255; // 0 to 2 **8 -1. default value is Zero
 bool public flag = true; //default value is true.
 address public contract_owner = msg.sender;
 bytes1 public myBytes = 'a';

 uint8 public typeCast = uint8(myInt8);
 uint8 public uint8Max = type(uint8).max;
 uint8 public uint8Min = type(uint8).min;

 // bytes
 bytes2 public b2 = 'ab';
 bytes3 public b3 = 'abc';
 bytes4 public b4 = 0x25262728;

//function to get bytes value by index
function getBytes(uint _i) public view returns(bytes1) {
    return b4[_i];
}

//enum :- to represent constant values.
   
   enum claimStatus {Approved,Rejected}

   claimStatus public status;

   //set status
   function setStatus(uint _claim) public {
       if (_claim > 100) {
           status = claimStatus.Rejected;
       }

       else if  (_claim < 100) {
           status = claimStatus.Approved;
       }
   }

   //get status

   function getStatus() public view returns(claimStatus) {
       return status;
   }
}

// inheritance and visibility qualifiers in solidity
contract company1 {
    uint public worth = 10000000;

    //public:- can be accessed externally,internaly and from derived contracts as well.
    function setPub() public view returns(uint) {
        // uint _ext = setExt(); This is an external function
        return worth;
    }

    //external:- can be accssed externally and visible from derived contracts.
    function setExt() external view returns(uint) {
        // uint _pvt = setPvt(); can be accessed as from within
        return worth;
    }

    //private:- only accessed from within the contract
    function setPvt() private view returns(uint) {
        // uint _int = setInt(); can be accessed as from within
        return worth;
    }

    //internal:- can be accessed within and from derived contracts.
    function setInt() internal view returns(uint) {
        return worth;
    }
 }

contract company2 {

    company1 public c1 = new company1();
    uint public pub = c1.setPub();
    uint public ext = c1.setExt();
    // uint public pvt = c1.setPvt(); This is a private function.
    // uint public intr = c1.setInt(); This is an internal function.


}

contract company3 is company1 {
    // uint public ext = setExt(); This is an external function
    // uint public pvt = setPvt(); This is a private function.
    uint public intr = setInt();
}

// arrays-Fixed
contract Arrays {
    uint[2] public Ids = [2019,2022];
    uint[3] public Growth;

    //set Growth
    function setGr(uint i,uint _Growth) public {
        Growth[i] = _Growth;
    }
    //get length - static array has length member
    function getSAL() public view returns(uint) {
        return Growth.length;
    }

    // Dynamic Arrays.
    uint[] public hour = [1,2,5,10,100];
    uint[] public month;

    //set month
    function setMonth(uint _month) public {
        month.push(_month);
    }

    //get month
    function getMonth() public view returns(uint) {
        return month.length;
    }

    //pop month
    function popMonth() public {
        month.pop();
    }
}

// address_addressPayable datatype
contract APayable {
    address public contract_owner;
    address payable public recipient_address;

    uint public transfer_amount;
    uint public recipient_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    //send money to recipient address
    function sendTo(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }
}

// structs 

contract structCon {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;
    //set cryptotrading
    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.traderId = _traderId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }

    //get cryptoTrading
    function getCT() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    // array of struct.

    Trading[] public CTA;
    //set CTA 
    function setCTA(uint _traderId,uint _quantity,uint _price ,string memory _traderName) public {
        Trading memory tempStruct = Trading({
            traderId:_traderId,
            quantity:_quantity,
            price:_price,
            traderName:_traderName
        });
        CTA.push(tempStruct);

    }
}

// Mapping 

contract conMap {
    mapping(uint => string) public Names;

    constructor() {
        Names[1] = "DApp1";
        Names[2] = "DApp2";
        Names[3] = "DApp3";
    }

    mapping(uint => string) public myMap1;
    //set myMap1
    function setmyMap1(uint key,string memory value) public {
        myMap1[key] = value;
    }

    //set a struct in mapping
    struct book {
        string title;
        string author;
    }

    mapping (uint => book) public books;
    //set books
    function setBooks(uint _key,string memory _title,string memory _author) public {
        books[_key] = book(_title,_author);
    }
}



