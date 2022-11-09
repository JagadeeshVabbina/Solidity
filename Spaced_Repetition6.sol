//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract GlobalFnsVars {
    //Block & Transactional functions_variables
    //blockhash :- latest 256 blocks
    function getBlkHash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //block.number :- current block
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //block.coinbase:- current block miner's address
    function getMnrAddr() public view returns(address) {
        return block.coinbase;
    }

    //block.difficulty
    function getBlkdiffclty() public view returns(uint) {
        return block.difficulty;
    }

    //block.gaslimit
    function getBlkGaslimit() public view returns(uint) {
        return block.gaslimit;
    }

    //block.timestamp:- since 00:00:00 01Jan1972 UTC
    function getBlkTimestmp() public view returns(uint) {
        return block.timestamp;
    }
    //gasleft
    function getGasLeft() public view returns(uint) {
        return gasleft();
    }

    //msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }

    //msg.sender
    function getSender() public view returns(address) {
        return msg.sender;
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

    //Mathematical and cryptographic hashes.
    //addmod(4,5,6) = (4+5)%6 = 3.
    function getAddmod(uint x,uint y,uint z) public pure returns(uint) {
        return addmod(x,y,z);
    } 

    //mulmod(4,5,6) = (4x5) % 6 = 2
    function getMulmod(uint a,uint b,uint c) public pure returns(uint) {
        return mulmod(a,b,c);
    }
    //keccak256
    function getKeccak(bytes memory _bytesInput) public pure returns(bytes32) {
        return keccak256(_bytesInput);
    }

    // Contract Related Global functions and Variables.
    //this :- current contract information.
    function getCurrentConBal() public view returns(uint) {
        return address(this).balance;
    }
    //selfdestructs:- destructs the current contracts and sends its funds to the given address.
    function selfDestruct(address payable _address) public {
        selfdestruct(_address);
    }

    //abi.encode and abi.encodePacked
    //abi.encode :- there will be padding
    function getabiEncode() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //abi.encodePacked :- there will not be any padding
    function getabiencodePacked() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256 from V0.5
    function getK256() public pure returns(bytes32) {
       // return keccak256("abc","xyz"); can not accept multiplt args from 0.5.0
      return keccak256(abi.encodePacked("abc","xyz"));
       // return uint(keccak256(abi.encodePacked("abc","xyz"))); //need to change returns as uint
    }    
}

/// @author Smart contract Developer
// basic structure of a smart contract in solidity
/* solidity is a high level object oriented language. it is designed to target the Etherum Virtual Machine(EVM).
it is heavily influenced by C++,Python and Javascript.it is statically typed(define at compile time)
it supports inheritance,user defined data types.
smart contract use cases:- crowdfunding,blind auction and voting..etc
*/
contract basicSSC {
    //state vars are defined at contract level,stored in blockchain ledger permanently and cost gas.
    uint8 public myUint8 = 255; //uint:- non negative nums,uint8 scope 0 to 2**8 -1
    uint16 public myUint16 = 10000; // 0 to 2**16 - 1;
    int8 public myInt8 = -128; //negative and positive nums, -2**7 to 2**7 - 1.
    uint public var1;
    
    //constructor is a function that executes once at the time of deployment. it is used not to hard code the state vars.
    constructor(uint _var1) {
        var1 = _var1;
    }

    /** @dev the function sets the state vars
    * @param _var1 this parameter is local variable
    * Local vars are declared at function level, they are stored in temporary memory/storage and do not cost gas.
    */
    function setVar1(uint _var1) public returns(uint) {
        var1 = _var1;
        return var1;
    }

    /* data types 1. value type:- holds value directly within the storage/memory.
                                  can not take more than 32 bytes(256 bit)
                                  int,uint,bool,address,bytes and enum.

                   2.Reference Type:- holds location of where the value is stored.
                                   can take more than 32 bytes
                                   strings,structs,Arrays(fixed/dynamic) and mapping(key/value).
    */
    bool public flag = true; //default value is false.
    address public contract_owner = msg.sender;
    bytes1 public b1 = 'a';
    bytes2 public b2 = 'ab';
    bytes3 public b3 ='abc'; //length is three
    bytes4 public b4 = 0x25262728;

    //get bytes by index
    function getByIndex(uint i) public view returns(bytes1)  {
        return b3[i];
    }  

    //get Bytes Length
    function getBytesLen() public view returns(uint) {
        return b3.length;
    }   

    //enum
    enum claimStatus {Approved,Rejected}
    claimStatus public status;
    function setClaim(uint _claim) public {
        if (_claim > 100) {
            status = claimStatus.Rejected;
        }

        else if (_claim < 100) {
            status = claimStatus.Approved;
        }
    }  

    //get Status
    function getStatus() public view returns(claimStatus)  {
        return status;
    }                                        
}

//address 
contract sendEther {
    address public contract_owner;
    address payable recipient_address; //payable :- so that it can receive

    uint public transfer_amount;
    uint public recipient_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    function sendTo(address payable _address) public payable returns(uint) {
        recipient_address = _address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }

    string public name = "Blockchain Developer";
    bytes public bytesName = bytes(name);
}

//inheritance and visibility qualifiers in solidity
contract companyA {
    uint public var1 = 28;

    //public:-can be accessed externally,internally and from derived contract as well.
    function getPub() public view returns(uint) {
        // uint _ext = getExt(); // This is an external function.can not be accessed.
        return var1;
    }

    //external:- can be acccessed externally and visible from derived contracts
    function getExt() external view returns(uint) {
        // uint _pvt = getPvt(); can be accessed as from within the contract
        return var1;
    }

    //private:- can be accessed only within the contract
    function getPvt() private view returns(uint) {
        // uint _intr = getIntr(); // can be accessed as from within.
        return var1;
    }

    //internal:- can be accessed from internally and derived contracts.
    function getIntr() internal view returns(uint) {
        return var1;
    }



}

contract companyB {
    //instance of contractA
    companyA public a = new companyA();
    uint public pub = a.getPub();
    uint public ext = a.getExt();
    // uint public pvt = a.getPvt(); This is a private function.
    // uint public intr = a.getIntr(); This is an internal function.


}

contract companyC is companyA {
    // uint public pvt = getPvt(); This is a private function.
    uint public intr = getIntr();
}

/* view :- can read the state but can not change it
pure :- can not read the state ,can not change it. */

//arrays:- fixed. has length meber
contract arraysFD {
    uint[3] public Ids = [25,26,27];
    uint[4] public age;

    function setAge(uint i,uint _age) public {
        age[i] = _age;
    }

    function getLen() public view returns(uint) {
        return age.length;
    }

    //dynamic
    uint[] public projects;
    function setProjects(uint _projects) public {
        projects.push(_projects);
    }

    function getPLen() public view returns(uint) {
        return projects.length;
    }

    function popP() public {
        projects.pop();
    }
}

//structs
contract structContract {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;
    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.traderId = _traderId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }

    function getCT() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    //an array of struct
    Trading[] public CTA;
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

//mapping :- key=> value
contract MapsInSol {
    mapping(uint => string) public Names;

    constructor() {
        Names[1] = "ProjectA";
        Names[2] = "ProjectB";
        Names[3] = "ProjectC";
    }

    mapping(uint => address) public owners;
    function setAdd(uint key,address value) public {
        owners[key] = value;
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



