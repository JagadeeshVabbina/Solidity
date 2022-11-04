//SPDX-License-Identifier: MIT
/** @author SmartContract Developer
* @title smart contract structure. */
pragma solidity ^0.8.17;

contract basicSmartContract {
    /* state variables are stored in blockchain storage,
       costs gas. */

    string public var1;
    uint public var2;

    constructor (string memory _var1,uint _var2) {
        var1 = _var1;
        var2 = _var2;
    }

    //function to set the state Variables.
    ///@dev it sets the state variables
    ///@param _var1 string variable 
    ///@param _var2 uint variable

    function setVars(string memory _var1, uint _var2) public {
        var1 = _var1;
        var2 = _var2;
    }

    //get the state Vars.

    function getStateVars() public view returns(string memory,uint) {
        return (var1,var2);
    }
}

// solidity- inheritence and visibility Qualifiers

contract companyA {
    uint public age = 28;
    //public:- can be accessed from external, internal and from derived contracts.
    function getPublic() public view returns(uint) {
       // uint Ext = getExt(); This is an external function.
        return age;
    }

    //external :- can be  accessed externally and visible on derived , can not from the same contract.
    function getExt() external view returns(uint) {
       // uint prt = getPvt(); // can be accessed as from within
        return age;
    }

    //private:- can be accessed only within the same contract.
    function getPvt() private view returns(uint) {
         // uint intr = getInt(); //can be accessed .
        return age;
    }

    //internal:- can be accessed from within the contract and from derived contracts
    function getInt() internal view returns(uint) {
        return age;
    }
}

contract companyB {
    companyA public a = new companyA();
    uint public pub= a.getPublic();
    uint public ext = a.getExt();
    // uint public pvt = a.getPvt(); This is a private function
    // uint public intr = a.getInt(); This is an internal function.



}

contract companyC is companyA {
    // uint public pvt = getPvt(); This is a private function.
    uint public intr = getInt();

}

// Activity-Qualifiers
contract ActQua {
    uint public var1 = 20;
    uint public var2 =8;

    //view :- can access the state but can not modify it 

    function setView() public view returns(uint _total) {
        _total = var1 + var2;
        return _total;
    }

    // pure:- cant read/modify the state

    function getPure() public pure returns(uint _sum) {
        uint _num1 = 25;
        uint _num2 = 3;
        _sum = _num1 + _num2;
        return _sum;
    }

    //fallback and receive

    fallback() external payable {


    }

    receive() external payable {


    }
}

// address _ addressPayable.
contract AddrPayable {
    address public owner;
    address payable public recipient_addr;

    uint public transfer_money;
    uint public recipient_bal;

    constructor () {
        owner = msg.sender;
    }

    // send money to recipient
    function sendMoney(address payable _recipient_addr) public payable returns(uint) {
        recipient_addr = _recipient_addr;
        transfer_money = msg.value;
        recipient_addr.transfer(transfer_money);
        recipient_bal = recipient_addr.balance;
        return recipient_bal;

    }
}


//enum 

contract enumSol {
    enum claimStatus {Approved, Rejected}

    claimStatus public status;

    //claim logic

    function getClaim(uint _claim) public {
        if (_claim > 100) {
            status = claimStatus.Rejected;
        }

        else if (_claim <100) {
            status = claimStatus.Approved;
        }
    }

    //status

    function getStatus() public view returns(claimStatus) {
        return status;
    }
}

//Fixed-DynamicArrays

contract FDArray{
    bytes1 public var1 = 'a';
    bytes2 public var2 = 'ab';
    bytes3 public var3 = 'abc';
    bytes4 public var4 =0x25262728;

    function getBytes(uint i) public view returns(bytes1) {
        return var3[i];
    }

    function getbLen() public view returns(uint) {
        return var3.length;
    }
    //fixed arrays has only length member

    uint[2] public age = [18,19];    
    uint[3] public distance;

    function setDistance(uint i,uint  _distance) public {
        distance[i] = _distance;
    }

    //Dynamic arrays has push,pop and length member
    uint[] public DynArr;

    function setDynArr(uint _DynArr) public {
        DynArr.push(_DynArr);

    }

    function getDynArrLength() public view returns(uint) {
        return DynArr.length;
    }

    function popDynArr() public {
        DynArr.pop();
    }
}

contract solidStruct {
    struct Trading {
        uint traderId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;

    function setCryptoTrading(uint _traderId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.traderId = _traderId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;

    }

    function getCryptoTrading() public view returns(uint,uint,uint,string memory) {
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




