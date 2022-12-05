//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract OCEAN {
    /* solidity is a high level object oriented programming language designed to target Etherum Virtual Machine.
    it is influenced by C++,python and Javascript. solidity is statically typed and it supports inheritance and complex user defined data types.
    smart contract use cases:- voting,crowdfunding and blind auction.
     */

     //state variables:- stored permanently in blockchain,defined at contract level and cost gas.
     uint public price;
     string public commodity;

     //constructor executes once at the time of deployment and it is used not to hard code the state variables.
     constructor(uint _price,string memory _commodity) {
         price = _price;
         commodity = _commodity;
     }

     //get state
     function getState() public view returns(uint ,string memory) {
         return(price,commodity);
     }

     //set state
     //local variable are stored in temporary memory,do not cost gas and scope is within the function only.
     function setState(uint _price,string memory _commodity) public {
         price = _price;
         commodity = _commodity;
     }     
}

contract  dataTypes {
    /* 1. value type:- store value directly within the location.
                       do not store more than 256 bits.
                       int,uint,bool,bytes,address and enum.

        2. reference type"- holds the address of the location where the value is stored.
                            can store more than 256 bits.
                            strings,structs,arrays(fixed/dynamic) and Mappings(key/value).               
     */
    uint8 public varUint8 = 255; //uint8 = 0 to 2**8 - 1. default value is 0
    int8 public varInt8 = -128; //int8 = -2**7 to 2**7 - 1.
    uint public varUint256 = 20000; //uint = uint256 = 0 to 2**256 - 1.
    bool public isPaid = true; //default value is false
    address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //20 byte hexadecimal value.
    bytes1 public b1 = 'a'; //stores in binary 
    bytes2 public b2 = 'ab';
    bytes3 public b3 = 'abc';
    bytes4 public b4 = 0x25262728;

    //get bytes variable length which fixed
    function getBytesLen() public view returns(uint) {
        return b3.length;
    }

    //get bytes value by index
    function getBbyIndex(uint i) public view returns(bytes1) {
        return b4[i];
    }

    //enum :-to represent a constant value
    enum state { AP,Telangana} 

    state public myState;

    //logic to set myState;
    function setmyState(uint _year) public {
        if (_year <2014) {
            myState = state.AP;
        }
        else if (_year >= 2014 ) {
            myState = state.Telangana;
        }
    }    
}

//address
contract Transaction {
    address public owner;
    address payable public recipient;

    uint public transfer_amount;
    uint public recipient_balance;

    constructor() {
        owner = msg.sender;
    }

    //initiate the transaction.
    function sendEthto(address payable _recipient) public payable returns(uint) {
        recipient = _recipient;
        transfer_amount = msg.value;
        recipient.transfer(transfer_amount);
        recipient_balance = recipient.balance;
        return recipient_balance;
    }
}

//inheritance and visibility qualifiers.
contract projectA {
    uint public var1 = 30;

    //public 
    function setPub() public view returns(uint) {
        // uint _ext = setExt(); This is an external function.
        return var1;
    }

    //external 
    function setExt() external view returns(uint) {
        return var1;
    }

    //private
    function setPvt() private view returns(uint) {
        return var1;
    }

    //internal
    function  setIntr() internal view returns(uint) {
        return var1;
    }
}

contract projectB {

    projectA public a = new projectA(); //instance of project A.
    uint public pub = a.setPub();
    uint public ext = a.setExt();
    // uint public pvt = a.setPvt(); This is a private function.
    // uint public Intr = a.setIntr(); This is an internal function.

}

contract projectC is projectA {
    // uint public pvt = setPvt(); This is a private function.
    uint public Intr = setIntr();
}

//strings
contract strByte {

    string public empName = "Developer";
    bytes public empByte = bytes(empName);
}

//arrays :- Fixed/Dynamic
contract arrays {
    //fixed - has length member
    uint[3] public nums = [25,26,27];
    uint[4] public prices;

    //set prices
    function setPrices(uint i,uint _prices) public {
        prices[i] = _prices;
    }

    //get prices length
    function getPricesLen() public view returns(uint) {
        return prices.length;
    }

    //Dynamic Arrays - push and pop member.

    uint[] public sections = [2,5,7,9];
    uint[] public age;

    //set age
    function setAge(uint _age) public {
        age.push(_age);
    }

    // get age Length
    function getAgeLen() public view returns(uint) {
        return age.length;
    }

    //pop age
    function popAge() public {
        age.pop();
    }
}

// structs
contract solStructs {

    struct class {
        uint count;
        string subject;
        bool isPassed;
    }

    class public classA ;
    class[] public classAA;

    // to set classA
    function setClassA(uint _count,string memory _subject,bool _isPassed) public {
        classA.count = _count;
        classA.subject = _subject;
        classA.isPassed = _isPassed;
    }

    //get classA 
    function getClassA() public view returns(uint,string memory,bool) {
        return(classA.count,classA.subject,classA.isPassed);
    }

    //set classAA
    function setCAA(uint _count,string memory _subject,bool _isPassed) public {
        class memory tempStruct = class ({
            count:_count,
            subject:_subject,
            isPassed:_isPassed
        });
        classAA.push(tempStruct);
    }
}

//mapping
contract myMap {
    mapping(uint => string) public names;

    constructor() {
        names[1] = "developer1";
        names[2] = "developer2";
        names[3] = "developer3";
    }

    struct book {
        string title;
        uint yearReleased;
    }

    mapping(uint => book) public myBooks;
    function setmyBooks(uint i,string memory _title,uint _yearReleased) public {
        myBooks[i] = book(_title,_yearReleased);
    }
}

//global variables and functions --> block and transactional
contract GblFnsVars {

    //blocknumber
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //blockhash
    function getBlkhash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //block miner address (block.coinbase)
    function getMnrAddr() public view returns(address) {
        return block.coinbase;
    }

    //block.difficulty
    function getBlkDifficulty() public view returns(uint) {
        return block.difficulty;
    }

    //block.timestamp
    function getBlkTimestamp() public view returns(uint) {
        return block.timestamp;
    }

    //gas limit.
    function getblkgasLimit() public view returns(uint) {
        return block.gaslimit;
    }

    //gas left
    function getGasLeft() public view returns(uint) {
        return gasleft();
    }

    //msg.sender
    function getMsgSender() public view returns(address) {
        return msg.sender;
    }

    //msg.value
    function getMsgValue() public payable returns(uint) {
        return msg.value;
    }

    //msg.data
    function getMsgData() public pure returns(bytes memory) {
        return msg.data;
    }

    //msg.sig
    function getMsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //tx.origin
    function getTxOrigin() public view returns(address) {
        return tx.origin;
    }

    //tx.gasprice;
    function getTxPrice() public view returns(uint) {
        return tx.gasprice;
    }

    //smart contract releated.
    //this
    function getThisBalance() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct(address payable _myOwner) public {
        selfdestruct(_myOwner);
    }

    //Mathematical and cryptographic
    //addmod
    function addMod(uint x,uint y,uint z) public pure returns(uint result) {
        result = addmod(x,y,z);
        return result;
    }

    //mulmod
    function MulMod(uint x,uint y,uint z) public pure returns(uint result) {
        result = mulmod(x,y,z);
        return result;
    }

    //keccak256
    function getKeccak256(bytes memory _input) public pure returns(bytes32) {
        return keccak256(_input);
    }

    //abi.encode & abi.encodePacked
    function getabiEncode() public pure returns(bytes memory) {
        return abi.encode("web3","ethereum");
    }

    //abi.encodePacked:- no padding
    function getAbencodePacked() public pure returns(bytes memory) {
        return abi.encodePacked("web3","blockchain");
    }

    //keccak256
    function getK256() public pure returns(bytes32) {
       // return keccak256("web3","satoshi");
       return keccak256(abi.encodePacked("web3","satoshi"));
      // return uint(keccak256(abi.encodePacked("web3","satoshi")));  need to change returns as uint.
    }
}

//error_exception handling.
contract EEH {
    address public owner;

    uint public contract_bal;

    constructor() {
        owner = msg.sender;
    }

    function sendEth() public payable returns(uint) {
        contract_bal = address(this).balance;
        revert("halt the function");
        return contract_bal;        
    }

    //selfdestruct

    function killTheCon(address payable _addr) public {
        require(msg.sender == owner,"Only owner can execute this function");
        assert(address(this).balance > 0);
        selfdestruct(_addr);
    }
}

//events
contract eventsInSol {

    address public owner;

    uint public toAccBal;

    constructor() {

        owner = msg.sender;
    }

    event transfer(address,address,uint);

    function tranFun(address payable _toaddr) public payable returns(uint) {
        _toaddr.transfer(msg.value);
        toAccBal = _toaddr.balance;
        emit transfer(owner,_toaddr,msg.value);
        return toAccBal;
    }
}

//modifiers
contract solModifiers {
    address public owner;

    uint public contract_balance;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly {
        if (msg.sender == owner) {
            _;
        }
    }

    function sendEth() public payable returns(uint) {
        contract_balance = address(this).balance;
        return contract_balance;
    }

    function killContract(address payable _addr) ownerOnly public {
        selfdestruct(_addr);
    }
}

//controls
contract controls {
    event logLoop(uint);
    event breakLoop(string);

    //ifelse
    function ifElse(uint x,uint y) public pure returns(uint z) {
        if (x > y) {
            z = x - y;
            return z;
        }
        else if(x < y) {
            z = y - x;
            return z;
        }
    }

    //while
    function WhileLoop(uint counter) public  {
        uint i = 0;
        while (i < counter ) {
            emit logLoop(i);
            i = i + 1;
        }
    }

    //doWhile
    function doWhile(uint counter) public {
        uint i =0;
        do {
            emit logLoop(i);
            i = i + 1;
        } while(i < counter);
    }

    //for Loop
    function forLoop(uint counter) public {
        for (uint i =0;i < counter;i++) {
            emit logLoop(i);
        }
    }

    //break statement
    function breakStatement(uint counter) public {
        for (uint i =0;i < counter;i++) {
            if (i == 4) {
                break;
            }
            emit logLoop(i);
        }
       emit  breakLoop("break out of loop");
    }

    //continue
    function continueStatement(uint counter) public {
        for(uint i =0;i<counter;i++) {
            if (i ==4) {
                continue;
            }
            emit logLoop(i);
        }

        uint j = 0;
        while (j < counter) {
            j = j + 1;
            emit logLoop(j);
        }
    }
 }

 // operators:- < > <= >= && || ! !=




