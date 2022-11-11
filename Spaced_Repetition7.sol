//SPDX-License-Identifier:MIT
/// @author smart contract developer
pragma solidity ^0.8.17;
contract Reinforcement {
    /* Solidity is a object oriented programming language,it is designed to target Ethereum Virtual Machine.
    it is heavily influenced by C++,Pythons and Javascript.it is statically typed and supports inheritance,user defined data types.
    use cases are smart contracts for Voting,blind auction and crowdfunding. */
    //state variables:- store permanently in blockchain ledger and cost gas.
    uint public var1;
    string public var2; //public visibility on a state var creates a getter a function

    // constructor is a function that executes once at the time of deployment.it is used not to hard code the state variables.
    /* constructor(uint _var1,string memory _var2) {
        var1 = _var1;
        var2 = _var2;        
    } */

    //set state variables
    /** @dev it sets the state variables
    * @param _var1 is a uint variable
    * @param _var2 is a string varibale (param tag is case sensitive )
    */
    function setVars(uint _var1,string memory _var2) public {
        var1 = _var1; //_var1 & _var2 :- local variables store in temporary storage and do not cost gas.
        var2 = _var2; // Local variables scope is within the function only.
    }

    //read state variables
    function getVars() public view returns(uint,string memory) {
        return (var1,var2);
    }

    /* data tyeps  1. Value DataType:- holds value directly within the storage/memory
                                       can not store more than 32 bytes(256 bit)
                                       int,uint,bool,address,bytes and enum.

                    2. Reference DataType:- holds location of value stored.
                                          can store more than 32 bytes(256 bits).
                                          Strings,structs,arrays(fixed/dynamic) and Mapping(key/value).                    
     */

     // value types
     int8 public myInt8 = -128; // -2**7 to 2**7 - 1. default value is 0 
     uint8 public myUInt8 = 255; // 0 to 2**8 - 1.  default value is 0
     uint16 public myUint16 = 10000; // 0 to 2**16 - 1.
     bool public flag = true; //default value is false.
     address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // 20 byte Hexa decimal value.

     uint8 public typeCast = uint8(myInt8);
     uint8 public Max = type(uint8).max;
     uint8 public min = type(uint8).min;
    //balance and transfer and payable
     address public contract_owner;
     address payable public recipient_address; //payable enable the address to receive.

     uint public transfer_amount;
     uint public recipient_balance;

     constructor() {
         contract_owner = msg.sender;
     }

     function sendTo(address payable _recipient_address) public payable returns(uint) {
         recipient_address = _recipient_address;
         transfer_amount = msg.value;
         recipient_address.transfer(transfer_amount);
         recipient_balance = recipient_address.balance;
         return recipient_balance;
     }

     //bytes
     bytes1 public b1 = 'a';
     bytes2 public b2 = 'ab';
     bytes3 public b3 = 'abc'; //fixed size.
     bytes4 public b4 = 0x25262728;

     //get bytes value by index
     function getBytes(uint i) public view returns(bytes1) {
         return b3[i];
     }

     //get the length of bytes
     function getLenBytes() public view returns(uint) {
         return b3.length;
     }

     //enum
     enum claimStatus {Approved,Rejected}
     claimStatus public status;

     function setClaim(uint _claim) public {
         if (_claim > 100) {
             status = claimStatus.Rejected; // will show as index value.
         }

         else if (_claim < 100) {
             status = claimStatus.Approved;
         }
     }

     function getStatus() public view returns(claimStatus) {
         return status;
     }
}

// inheritance and visibility qualifiers in solidity.
contract companyA {
    uint public Num = 8;

    //public:- can be accessed externally,internally and from derived contracts as well
    function getPub() public view returns(uint) {
        // uint _ext = getExt(); //This is an external function.
        return Num;
    }

    //external :- can be accessed externally and visible from derived contracts.
    function getExt() external view returns(uint) {
        // uint _pvt = getPvt(); can be accessed as from within the contract.
        return Num;
    }

    //private:- can be accessed only within the contract
    function getPvt() private view returns(uint) {
        // uint _intr = getIntr(); can be accessed as from within.
        return Num;
    }

    //internal:- can be accessed internally and from derived contracts.
    function getIntr() internal view returns(uint) {
        return Num;
    }


}

contract companyB {
    companyA public a = new companyA();
    uint public pub = a.getPub();
    uint public ext = a.getExt();
    // uint public pvt = a.getPvt(); This is a private function.
    // uint public intr  = a.getIntr(); This is an internal function.


}

contract companyC is companyA {
    uint public intr = getIntr();
}

/* view:- can read the state , can not modify it.
   pure:- can not read, can not modify state. */

contract strs {
    string public name = "Blockchain";
    bytes public crypto = "Blockchain";
    bytes public bname = bytes(name);
    bytes10 public b10name = "Blockchain";
}   

//arrays- fixed. - length member
contract ArraysSol {
    uint[3] public names = [8,9]; //Size of this array is 3.
    uint[4] public values;

    //get names length
    function getNamesLength() public view returns(uint) {
        return names.length;
    }

    //set values
    function setValues(uint i,uint _values) public {
        values[i] = _values;
    } 

    //dynamic :- push & pop
    uint[] public amount;

    function setAmount(uint _amount) public {
        amount.push(_amount);
    }

    function getAmtLen() public view returns(uint) {
        return amount.length;
    }

    function popAmt() public {
        return amount.pop();
    }  
}

//structs 
contract StructSol {

    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;

    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public  {
        cryptoTrading.traderId = _traderId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }

    function getCT() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    Trading[] public CTA;
    function setCTA(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        Trading memory tempStruct = Trading ({
            traderId:_traderId,
            quantity:_quantity,
            price:_price,
            traderName:_traderName
        });
        CTA.push(tempStruct);
    }
}

// Mapping 
contract MapSol {
    mapping(uint => string) public Name;

    constructor() {
        Name[1] = "Blockchain";
        Name[2] = "Smart contract Dev";
        Name[3] = "solidity";
    }

    mapping(uint => address) public year;

    function setYear(uint i,address _year) public {
        year[i] = _year;
    }

    struct book {
        string title;
        uint year;
    }

    mapping(uint => book) public books;

    function setBooks(uint i,string memory _title,uint _year) public {
        books[i] = book(_title,_year);
    }
}

contract GFnsVars {
//Block & Transactional Global functions and Variables.
     //blockhash :- latest 256 block hashes
    function getBlkhash(uint _blocknumber) public view returns(bytes32) {
    return blockhash(_blocknumber);
     }

    //blocknumber :- current block number
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //block miner address- block.coinbase
    function getBlkMnr() public view returns(address) {
        return block.coinbase;
    }

    //block.timestamp :- since 00:00:00 01Jan1970.
    function getBlkTimeStmp() public view returns(uint) {
        return block.timestamp;
    }

    //block.gaslimit
    function getBlkGaslmt() public view returns(uint) {
        return block.gaslimit;
    }

    //block.difficulty
    function getBlkDifficlty() public view returns(uint) {
        return block.difficulty;
    }

    //gasleft
    function BlkGasleft() public view returns(uint) {
        return gasleft();
    }

    //msg.sender
    function msgSender() public view returns(address) {
        return msg.sender;
    }

    //msg.value
    function msgValue() public payable returns(uint) {
        return msg.value;
    }

    //msg.data
    function msgData() public pure returns(bytes memory) {
        return msg.data;
    }

    //msg.sig
    function msgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //tx.origin
    function txInception() public view returns(address) {
        return tx.origin;
    }

    //tx.gasprice
    function txgasPrice() public view returns(uint) {
        return tx.gasprice;
    }

    //mathematic & cryptographic global functions and variables
    //addmod((6+4)%2) = 10/2 = 0;
    function AddMod(uint x ,uint y,uint z) public pure returns(uint) {
        return addmod(x,y,z);
    }

    //mulmod
    function MulMod(uint x,uint y,uint z) public pure returns(uint) {
        return mulmod(x,y,z);
    }

    //keccak256
    function keccak256Fun(bytes memory _binput) public pure returns(bytes32) {
        return keccak256(_binput);
    }

    //contract related global functions and variables.
    //this; below function shows the balance of the current contract.
    function This() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct(address payable _address) public {
        selfdestruct(_address);
    }

    //abi.encode and abi.encodePacked.
    function abiEncode() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //abi.encodePacked
    function abiEncodePacked() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256
    function Keccak256() public pure returns(bytes32) {
        // return keccak256("abc","xyz"); //from v0.5 multiple orgs are not supported.
        return keccak256(abi.encodePacked("abc","xyz"));
         // return uint(keccak256(abi.encodePacked("abc","xyz"))); change returns to uint.
    }
}

//Error_Exceptions-Handling.
contract EEH {
    address public contract_owner;
    uint public contract_balance;
    constructor () {
        contract_owner = msg.sender;
    }

    function receiveEth() public payable returns(uint) {
        contract_balance = address(this).balance;
        revert("Halt the execution");
        return contract_balance;
    }

    function DestroyContract(address payable _address) public {
        require (msg.sender == contract_owner," only owner can execute");
        assert(address(this).balance != 0);
        selfdestruct (_address);
    }
}

// events
contract EventContract {
    address public fromAcc;
    uint public toAccBal;

    event Transferred(address,address,uint);

    constructor() {
        fromAcc = msg.sender;
    }

    function EventTrigger(address _toAddr) public payable {
        toAccBal = _toAddr.balance;
        emit Transferred(fromAcc,_toAddr,msg.value);
    }
}

//function modifiers.

contract funMod {
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

    function conBal() public payable returns(uint) {
        balance = address(this).balance;
        return balance;
    }

    function DestroyThisCon(address payable _address) ownerOnly public {
        selfdestruct(_address);
    }
}







