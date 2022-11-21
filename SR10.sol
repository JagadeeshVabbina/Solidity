//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
/// @author Smart Contract Developer
contract SolIntro {
    /* Solidity is an high level object oriented programming language which is designed to 
    target Etehreum Virtual Machine(EVM).it is heavily influenced by C++,Python and Javascript.
    it is statically typed,supports inheritance and user defined data types. use cases are wwriting smart 
    contracts from Voting,crowdfunding and Blind Auction..ect
    */
    //state variables are stored permanently in Blockchain ledger and they cost gas.
    string public empName;
    uint public empAge;

    //constructor is a function that executes once at the time of deployment and it is used not to hard code state variables.
    constructor(string memory _empName,uint _empAge) {
        empName = _empName;
        empAge = _empAge;
    }

    //getter
    function getState() public view returns(string memory,uint) {
        return (empName,empAge);
    }

    //setter
    //local varibles are stored within temporary storage,they do not cost gas.
    function setState(string memory _empName,uint _empAge) public {
        empName = _empName;
        empAge = _empAge;
    }

    /* DataTypes   1.Value DataTypes:-holds value directly within storage/memory
                                      do not store more then 32 bytes.
                                      int,uint,bool,address,bytes and enum.

                    2. Reference Type:- holds location of address where value is stored.
                                        store more than 32 bytes.
                                         strings,structs,Arrays(Fixed/Dynamic) and Mapping(Key/value).

    */
    int8 public varInt8 = -128; // -2**7 to 2**7 - 1. default value is 0.
    uint8 public varUint8 = 255; // 0 to 2**8 - 1. default value is 0.
    bool public varBool = true; //default value is false.
    address public varAddr = 0xd9145CCE52D386f254917e481eB44e9943F39138; 
    bytes1 public binary1 = 'a';
    bytes2 public binary2 = 'ab';
    bytes3 public binary3 = 'abc'; //fixed length.
    bytes4 public binary4 = 0x25262728;

    //get Bytes length
    function getBLen() public view returns(uint) {
        return binary3.length;
    }

    //get Bytes value by index
    function getBytesByIndex(uint i) public view returns(bytes1){
        return binary3[i];
    }

    //enum:- to represent constants.
    enum claimStatus {Approved,Rejected}

    claimStatus public status;

    function setClaim(uint claim) public {
        if (claim > 100) {
            status = claimStatus.Rejected;
        }

        else if(claim < 100) {
            status = claimStatus.Approved;
        }
    }

    function getStatus() public view returns(claimStatus) {
        return status;
    }
}

//inheritance and Visibility qualifiers 
contract companyA {
    uint public var1 = 28;

    //public
    function setPub() public view returns(uint) {
        // uint ext = setExt(); This is an external function.
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
    function setIntr() internal view returns(uint) {
        return var1;
    }
}

contract companyB {

    companyA public a = new companyA();
    uint public pub = a.setPub();
    uint public ext = a.setExt();
    // uint public pvt = a.setPvt(); This is a private function.
    // uint public intr = a.setIntr(); This is an internal function.
}

contract companyC is companyA {
    // uint public pvt = setPvt(); This is a private function.
    uint public Intr = setIntr();
}

contract StrByte {
    string public myString = "Blockchain";
    bytes public myByte = bytes(myString);
}

//address
contract AddressContract {
    address public owner;
    address payable public receiver;

    uint public amount;
    uint public receiver_balance;

    constructor() {
        owner = msg.sender;
    }

    function sendEth(address payable _receiver) public payable returns(uint) {
        receiver = _receiver;
        amount = msg.value;
        receiver.transfer(amount);
        receiver_balance = receiver.balance;
        return receiver_balance;
    }
}

//arrays Fixed/Dynamic
contract Arrays {
    //fixed:- length member only
    uint[3] public Ids = [25,26,27];
    uint[4] public Depts;

    function setDepts(uint i,uint _Depts) public {
        Depts[i] = _Depts;
    }

    function getIdsLen() public view returns(uint) {
        return Ids.length;
    }

    //Dynamic:- push,pop and length members
    uint[] public Nums = [3,2,1,5];
    uint[] public amount;

    function setAmount(uint _amount) public {
        amount.push(_amount);
    }

    function getAmountLen() public view returns(uint) {
        return amount.length;
    }

    function popAmount() public {
        amount.pop();
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

    Trading public cryptoTrading;

    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.traderId = _traderId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }

    function getCT() public view returns(uint,uint,uint,string memory) {
        return(cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

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

//Mapping
contract SolMap {
    mapping(uint => string) public Names;

    constructor() {
        Names[1] = "Satoshi Nakamoto";
        Names[2] = "Vitalik Buterin";
        Names[3] = "DDDL";
    }

    mapping (uint => address) public owner;

    function setOwner(uint ownerId,address _ownerAddr) public {
        owner[ownerId] = _ownerAddr;
    }
}

//Global functions and variables
//Block and transactional Functions and Variables.
contract BlkTransactions {
    //blocknumber
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //blockhash
    function getBlkHash(uint _blocknum) public view returns(bytes32) {
        return blockhash(_blocknum);
    }

    //block.difficulty
    function getBlkDifficulty() public view returns(uint) {
        return block.difficulty;
    }

    //block.timestamp
    function getBlkTimeStmp() public view returns(uint) {
        return block.timestamp; //since 00:00:00 01Jan1970 UNIX Time
    }

    //block miner address
    function getBlkAddr() public view returns(address) {
        return block.coinbase;
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

    //tx.gasprice
    function getTxPrice() public view returns(uint) {
        return tx.gasprice;
    }

    //mathematical and cryptographic
    //addmod
    function getAddMod(uint x,uint y,uint z) public pure returns(uint) {
        return addmod(x,y,z);
    }

    //mulmod
    function getMulMod(uint x,uint y,uint z) public pure returns(uint) {
        return mulmod(x,y,z);
    }

    //keccak256
    function getKeccak256(bytes memory _bytes) public pure returns(bytes32) {
        return keccak256(_bytes);
    }

    //contract related
    //this
    function getCurrentAddbal() public view returns(uint) {
        return address(this).balance;
    }

    //selfdestruct
    function selfDestruct(address payable _address) public {
        selfdestruct(_address);
    }

    //abi.encode 
    function getAbiEncode() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //abi.encodePacked
    function getAbiPacked() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256 hash algorithm
    function k256() public pure returns(bytes32) {
        // return keccak256("abc","xyz"); Not possible from V0.5
        return keccak256(abi.encodePacked("abc","xyz"));
        // return uint(keccak256(abi.encodePacked("abc","xyz"))); need to set returns as uint
    }
}

//error _exception_handling
contract EEH {
    address public owner;

    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    function sendEth() public payable returns(uint) {
        balance = address(this).balance;
        revert("Halt this");
        return balance;
    }

    function selfDestruct(address payable _addr) public {
        require(msg.sender ==  owner,"Only owner can run this");
        assert(address(this).balance != 0);
        selfdestruct(_addr);
    }
}

//Events
contract solEvents {
    address public owner;

    uint public toAccBal;

    event Transfered(address, address,uint);

    function sendTo(address payable _addr) public payable returns(uint) {
        owner = msg.sender;
        _addr.transfer(msg.value);
        toAccBal = _addr.balance;
        emit Transfered(owner,_addr,msg.value);
        return toAccBal;
    }
}

//Modifiers
contract FModifiers {
    address public owner;

    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly {
        if(msg.sender == owner) {
            _;
        }
    }

    function sendEth() public payable returns(uint) {
        balance = address(this).balance;
        return balance;
    }

    function SelfDestruct(address payable _addr) ownerOnly public {
        selfdestruct(_addr);
    } 
}

//controls
contract controls {
    event LogLoop(uint);
    event BreakLoop(string);

    //ifelse
    function ifElse(uint x ,uint y) public pure returns(uint result) {
        if (x > y) {
            result = x - y;
            return result;
        }
        else if(x < y) {
            result = y - x;
            return result;
        }
        else {
            return 0;
        }
    }

    //whileLoop
    function WhileLoop(uint counter) public  {
        uint i = 0;
        while (i < counter) {
            emit LogLoop(i);
            i = i+1;
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
        for(uint i = 0;i<counter;i++) {
            emit LogLoop(i);
        }
    }

    //break statement
    function Break(uint counter) public {
        for(uint i=0;i<counter;i++) {
            if(i == 4) {
                break;
            }
            emit LogLoop(i);
        }
        emit BreakLoop("Out of Loop");
    }

    //continue statement
    function Continue(uint counter) public {
        for(uint i = 0;i<counter;i++) {
            if (i == 4) {
                continue;
            }
            emit LogLoop(i);
        }

        uint j = 0;
        while (j < counter) {
            j = j +1;
            if (j == 4) {
                continue;
            }
            emit LogLoop(j);
        }
    }
}

//Operators
contract Operators {
    // < > <= >= == != ! && ||
    function getOpr(uint x,uint y) public pure returns(uint result) {
        if (x >= 5 && y <= 10) {
            assert(y > x);
            result = y - x;
            return result;
        }
        else if(x >= 10 || y <= 5) {
            result = y + x;
            return result;
        }
    }
}

