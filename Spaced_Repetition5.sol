//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
///@author Smart contract Developer
contract ReinforcementL {
    /* state vars store permanently in blockchain ledger and cost gas
    * defined at contract level */
    uint8 public var1 = 255; // only non-negative numbers 0 to 2**8 -1
    uint16 public var2 = 10000; // 0 to 2**16 -1
    int8 public  var3 = 127 ;//-2**7 to 2 **7 -1;

    //constructor is a function that executes once at the time of the deployment.
    constructor(uint8 _var1,int8 _var3) {
        var1 = _var1;
        var3 = _var3;
    }
    /**@dev it sets the state varibles from function arguments.
    * @param _var1 sets uint8 arg
    * @param _var3 sets int8 arg */
    function setState(uint8 _var1,int8 _var3) public {
        var1 = _var1;
        var3 = _var3;
        
    }

    //getter
    /* local variables are stored in temporary memory,they do not cost gas
    and their scope is within the declared function */
    function getState() public view returns(uint8,int8) {
        return (var1,var3);
    }

    /* DataTypes:- 1.Value DataTypes:- holds value directly within storage/memory.
                            can not take more than 32 bytes(256 bit)
                            int,uint,bool,address,bytes and enum.


                    2. Reference Type:- holds location where values are stored.
                              can take more than 32 bytes(256 bit).
                              strings,structs,arrays(fixed/dynamic) and mapping(key/value).
    */

    // Value Types.
    uint public varUint = 256; //default value is 0 . uint == uint256; only non-negative numbers.
    int public varInt = -255; // default value is 0
    bool public varBool = true; //default value is false
    address public varAddress = 0xE4b73973200d09eFc6EdB3381E13E68AdF228dEB;// holds 20 bytes hexadecimal value of either EOA or contract.
    bytes1 public varBytes1 = 'a';
    bytes2 public varBytes2 ='ab';
    bytes3 public varBytes3 = 'ab'; //Length/size is fixed which is three
    bytes4 public varBytes4 = 0x25262728;

    //get bytes by index.
    function bytesbyIndex(uint _i) public view returns(bytes1) {
        return varBytes3[_i];
    }

    //get length of bytes
    function getLenBytes() public view returns(uint) {
        return varBytes3.length;
    }

    //enum:- to represent constants 
    enum claimStatus {Approved,Rejected}
    claimStatus public status;

    //set the logic of claim
    function setClaim(uint _claim) public {
        if (_claim >100) {
            status = claimStatus.Rejected;
        }

        else if(_claim <100) {
            status = claimStatus.Approved;
        }
    }

    //get status
    function getClaim() public view returns(claimStatus) {
        return status;
    }
}     

//address
contract RecipientEth {    
    address public contract_owner;
    address payable public recipient_address;

    uint public transfer_amount;
    uint public recipient_balance;

    constructor() {
        contract_owner = msg.sender;
    }

    //initiate the trasaction.
    function setEthTo(address payable _recipient_address) public payable returns(uint) {
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }
}

//inheritance and vibility qualifiers in solidity

contract companyA {
    uint public time = 28;

    //public:- can be accessed from external,internal and derived contracts.
    function getPub() public view returns(uint) {
         // uint _ext = getExt(); This is an external function.
        return time;
    }

    //external :- can be accessed from external,visible from derived .
    function getExt() external view returns(uint) {
       //  uint _pvt = getPvt(); //can be accessed as from within.
        return time;
    }

    //private:- can be accessed only from within the function only.
    function getPvt() private view returns(uint) {
       // uint _intr = getIntr(); //can be accessed as from within.
        return time;
    }

    //internal:- can be accessed internally and from derived contracts.
    function getIntr() internal view returns(uint) {
        return time;
    }


}

contract companyB {

    companyA public a = new companyA();
    uint public pub = a.getPub();
    uint public ext = a.getExt();
    // uint public pvt = a.getPvt(); This is a private function.
    // uint public intr = a.getIntr();
    


}

contract companyC is companyA {
    // uint public pvt = getPvt(); This is a private function.
    uint public intr = getIntr();
}


// view:- can view the state but can not change the state.
//pure:- can not view and can not change the state.

contract str {
    string public Name = "AJ";
    bytes32 public bytesName = "Name";
}

//structs:- multiple different properties can be stored in a single structure.
contract Sol {

}

//Arrays
contract ArraysinSol {
    //fixed :- fixed seze..has length member.
    uint[3] public FArray1 = [25,26,27];
    uint[4] public FArray2;

    //get FArray1 by index
    function  getFA1(uint _i) public view returns(uint) {
        return FArray1[_i];
    }

    //set FArray2
    function setFArray2(uint _i,uint _FArray2) public {
        FArray2[_i] = _FArray2; 
    }

    //Dynamic Array:- push & pop

    uint[] public DynArr;

    //set DynArr
    function setDynArr(uint _DynArr) public {
        DynArr.push(_DynArr);
    }

    //get DynArr
    function getDynArr(uint _i) public view returns(uint) {
        return DynArr[_i];
    }

    //getDynLength
    function getDynLen() public view returns(uint) {
        return DynArr.length;
    }

    //pop
    function popDynArr() public {
        DynArr.pop();
    }

}

// structs
contract SolStructs {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;

    //set cryptoTrading
    function setCT(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.traderId = _traderId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;
    }

    //get CT
    function getCT() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading.traderId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    //an array of struct
    Trading[] public CTA;
    function setCTA(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        Trading memory tempStruct = Trading({
            traderId : _traderId,
            quantity : _quantity,
            price : _price,
            traderName : _traderName
        });
        CTA.push(tempStruct);
    }
}

//Mapping (key => value pair)

contract MappSol {
    mapping(uint => string) public myMap;

    constructor() {
        myMap[1] = "ProjectA";
        myMap[2] = "ProjectB";
        myMap[3] = "ProjectC";
    }

    //setter
    function setmyMap(uint key,string memory value) public {
        myMap[key] = value;

    }

    struct book {
        string title;
        uint year;
    }

    mapping (uint => book) public books;
    function setBooks(uint key,string memory _title,uint _year) public {
        books[key] = book(_title,_year);
    }
}

//block and trasactional global functions and variables.

contract Blk_trns_GFV{
    //blockhash:- latest 256 block
    function getblkHash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //block.number:- current block number
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //block miner address
    function getBlkMnrAddr() public view returns(address) {
        return block.coinbase;
    }

    //block.difficulty:- current
    function getBlkdifficulty() public view returns(uint) {
        return block.difficulty;
    }

    //block.timestamp:- since 00:00:00 01Jan1970 UTC , noe is deprecated
    function getBlkTimestmp() public view returns(uint) {
        return block.timestamp;
    }
    //block.gaslimit
    function getBlkgasLimit() public view returns(uint) {
        return block.gaslimit;
    }

    //gasleft
    function getblockgasLeft() public view returns(uint) {
        return gasleft();
    }

    //msg.sender
    function getMsgSender() public view returns(address) {
        return msg.sender;
    }

    //msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }

    //msg.data
    function getMsgdata() public pure returns(bytes memory) {
        return msg.data;
    }

    //msg.sig
    function getmsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //tx.origin
    function getTxOrigin() public view returns(address) {
        return tx.origin;
    }

    //tx.gasprice
    function getgasPrice() public view returns(uint) {
        return tx.gasprice;
    }


}
   
