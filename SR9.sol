//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract SolidityPL {

    /* solidity is a high level object oriented programming language designed to target the ethereum virtual machine.
    it is statically typed,supports inheritance and user defined data types.solidity is highly influenced by C++,python and Javascript.
    */
    // basic structure
    // state variables :- permanently stored in blockchain ledger,defined at global level and cost gas
    uint public var1 ;
    string public var2;

    //constructor:- constructor is a function that executes once at the time of deployment.
    constructor(uint _var1,string memory _var2) {
        var1 = _var1;
        var2 = _var2;
    }

    //read the state
    function getState() external view returns(uint,string memory) {
        return (var1,var2);
    }

    //set the state
    /** @dev this function sets the state\
    @param _var1 is a uint type variable
    @param _var2 is a string type variable
    */
    //local variables are stored in temporary memory,do not cost gas.
    function setState(uint _var1,string memory _var2) external {
        var1 = _var1;
        var2 = _var2;
    }   

    /* data types:- 1.Value datatype:- holds value directly within the storage/memory
                                       do not store more than 32 bytes(256 bit)
                                       int,uint,bool,address,bytes and enum

                    2. Reference Type:- holds address of location where value is stored.
                                         can store more than 32 bytes(256 bit).
                                         strings,struct, Arrays(fixed/dynamic) and Mapping(key/value).                    
     */

     uint8 public uint8Var = 255; // uint8 :- 0 to 2**8 - 1
     uint16 public uint16Var = 10000; // 0 to 2**16 - 1
     int8 public int8Var = -128; // uint8 -2**7 to 2**7 -1
     bool public isIntense = true;
     address public contract_address = 0xd9145CCE52D386f254917e481eB44e9943F39138;
     bytes2 public BYTES2 = 'XX'; //stores in binary format.
     bytes2 public b2 = "XY";
     bytes3 public b3 = 'abc'; //fixed length
     bytes4 public b4 = 0x25262728;

     //get length of bytes3 variable.
     function getBlen() public view returns(uint) {
         return b3.length;
     }

     //get bytes variable value by index.
     function getValueByIndex(uint i) external view returns(bytes1) {
         return b3[i];
     }
}

//address
contract AddressDataType {
    address public owner;
    address payable public  receiver_address;

    uint public receiver_balance;
    uint public EthValue;

    constructor() {
        owner = msg.sender;
    }

    function sendEthto(address payable _receiver_address) external payable returns(uint) {
        receiver_address = _receiver_address;
        EthValue = msg.value;
        receiver_address.transfer(EthValue);
        receiver_balance = receiver_address.balance;
        return receiver_balance;
    }
}

//enum
contract Enums {
    //to represent constant values as index .
    enum Gender { Male,Female}

    Gender public sex;
    function EnterDNZ(bytes2  _Chromosomes) external {
        if (_Chromosomes == "XX") {
            sex = Gender.Female;
        }
        else if (_Chromosomes == "XY") {
            sex = Gender.Male;
        }
    }
}

// arrays - fixed.
contract Arrays {
    uint[3] public FixedArrays = [25,26,27];
    uint[4] public FArray;

    function setFArray(uint i ,uint _FArray) external {
        FArray[i] = _FArray;
    }

    function getFArrayLen() external view returns(uint) {
        return FArray.length;
    }

    //Dynamic Arrays
    uint[] public DArray;

    function setDArray(uint _DArray) external {
        DArray.push(_DArray);
    }

    function getDArrayLen() external view returns(uint) {
        return DArray.length;
    }

    //pop
    function popDArray() external {
        DArray.pop();
    }    
}

//structs
contract SolStructs {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public CT;

    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) external {
        CT.traderId = _traderId;
        CT.quantity = _quantity;
        CT.price = _price;
        CT.traderName = _traderName;
    }

    function getCT() external view returns(uint,uint,uint,string memory) {
        return (CT.traderId,CT.quantity,CT.price,CT.traderName);
    }

    //array of Struct
    Trading[] public CTA;

    function setCTA(uint _traderId,uint _quantity,uint _price,string memory _traderName) external {
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
 contract MapsSol {
     mapping(uint => string) public names;

     constructor() {
         names[1] = "Satoshi";
         names[2] = "Nakamoto";
         names[3] = "Vitalik Buterin";
     }

     mapping(address => string) public ownerName;
     function getOwnerName(string memory _OwnerName) external returns(string memory) {
         ownerName[msg.sender] = _OwnerName;
     }
 }

 //inheritance and Visibility qualifiers in Solidity
 contract companyA {
     uint public amount = 28;

     //public
     function setPub() public view returns(uint) {
         // uint ext = setExt(); this is an external function.
         return amount;
     }

     //external
     function setExt() external view returns(uint) {
         return amount;
     }

     //private
     function setPvt() private view returns(uint) {
         return amount;
     }

     //internal
     function setIntr() internal view returns(uint) {
         return amount;
     }
 }

 contract companyB {

     companyA public a = new companyA();
     uint public pub = a.setPub();
     uint public ext = a.setExt();
     // uint public pvt = a.setPvt(); This is a private function.
     // uint public Intr = a.setIntr(); This is an internal function.
 }

 contract companyC is companyA {
     // uint public pvt = setPvt(); This is a private function
     uint public Intr = setIntr();
 }

 // Global Functions and Variables
 // block and transactions related
 contract BlkTrnscs{

     //blocknumber
     function getBlkNum() public view returns(uint) {
         return block.number;
     }

     //blockhash
     function getBlkHash(uint blocknumber) public view returns(bytes32) {
         return blockhash(blocknumber);
     }

     //block miner
     function getBlkMnr() public view returns(address) {
         return block.coinbase;
     }

     //blockdifficulty
     function getBlkDifficulty() public view returns(uint) {
         return block.difficulty;
     }

     //block.timestamp
     function getBlkTimestmp() public view returns(uint) {
         return block.timestamp;
     }

     //block.gaslimit
     function getBlkGasLimit() public view returns(uint) {
         return block.gaslimit;
     }

     //gasleft
     function getGasLeft() public view returns(uint) {
         return gasleft();
     }

     //msg.sender
     function getMsgsender() public view returns(address) {
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

     //tx.gasprice
     function getGasPrice() public view returns(uint) {
         return tx.gasprice;
     }
 

 // Mathematic and cryptographic
     
     //addmod
     function addMod(uint x, uint y,uint z) public pure returns(uint) {
         return addmod(x,y,z);
     }

     //mulmod
     function mulMod(uint x,uint y,uint z) public pure returns(uint) {
         return mulmod(x,y,z);
     }

     //keccak256
     function getKeccak256(bytes memory _name ) public pure returns(bytes32) {
         return keccak256(_name);
     }

     //contract_related

     //this
     function getThisContractBal() public view returns(uint) {
         return address(this).balance;
     }

     //selfdestruct
     function SefDestrcut(address payable _address) public {
         selfdestruct(_address);
     }

     //abi.encode and abi.encodePacked 
     function abiEnode() public pure returns(bytes memory) {
         return abi.encode("abc","xyz");
     }

     //abi.encodePacked
     function abiEncodePacked() public pure returns(bytes memory) {
         return abi.encodePacked("abc","xyz");
     }

     //keccak256
     function getK256() public pure returns(bytes32) {
         // return keccak256("abc","xyz");
          return keccak256(abi.encodePacked("abc","xyz"));
          // return uint(keccak256(abi.encodePacked("abc","xyz"))); returns uint
     }

 }

 // error_exception handling
 contract EEH {
     address public contract_owner;

     uint public balance;

     constructor() {
         contract_owner = msg.sender;
     }

     function sendEth() public payable returns(uint) {
         balance = address(this).balance;
         revert("Halt this");
         return balance;
     }

     function selfDestruct(address payable _address) public {
         require(msg.sender == contract_owner,"only contract owner can run this");
         assert(address(this).balance != 0);
         selfdestruct(_address);
     }
 }

 //events

 contract Events {
     address public owner;

     uint public toAccBal;

     constructor() {
         owner = msg.sender;
     }

     event Transferred(address,address,uint);

     function sendTo(address payable _toAddr) public payable {
         _toAddr.transfer(msg.value);
         toAccBal = _toAddr.balance;

         emit Transferred(owner,_toAddr,msg.value);
     }
 }

 //modifiers
 contract FuncModifiers {
     address public owner;
     uint public bal;

     constructor() {
         owner = msg.sender;
     }

     modifier ownerOnly {
         if (msg.sender == owner) {
             _;
         }
     }

     function sendEth() public payable returns(uint) {
         bal = address(this).balance;
         return bal;
     }

     function selfDestruct(address payable _address) ownerOnly public {
         selfdestruct(_address);
     } 
 }

 //controls
contract controls {
    event LogLoop(uint);
    event LogBreak(string);
    //ifelse
    function ifElse(uint x ,uint y) public pure returns(uint result) {
        if (x >= 5 && y < 10) {
            result = y - x;
            return result;
        }

        else if ( x <= 5 || y > 10) {
            result = x + y;
        }
        else {
            return 0;
        }
    }

    //whileLoop
    function WhileLoop(uint counter) external  {
        uint i = 0;
        while(i < counter) {
            emit LogLoop(i);
            i = i + 1;
        }
    }

    //dowhile
    function doWhile(uint counter) public {
        uint i = 0;
        do {
            emit LogLoop(i);
            i = i + 1;
        } while (i < counter);
    }

    //forLoop
    function forLoop(uint counter) public {
        for (uint i = 0;i < counter;i++) {
            emit LogLoop(i);
        }
    }

    //breakstatement
    function Break(uint counter) public {
        for (uint i = 0;i< counter;i++){
            if (i == 4) {
                break;
            }
            emit LogLoop(i);
        }
        emit LogBreak("out of Loop");        
    }

    //continue statement
    function continueStatement(uint counter) public {
        for (uint i =0;i<counter;i++) {
            if ( i == 4) {
                continue;
            }
            emit LogLoop(i);
        }

        uint j = 0;
        while (j < counter) {
            j= j + 1;
            if (j == 4) {
                continue;
            }

            emit LogLoop(j);
        }
    }
}
