//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract SolStructs {
    // multiple properties in a single data Type and stored as a state variables

    struct Trading {
        uint tradeId;
        uint quantity;
        uint price;
        string traderName;
    }

    Trading public cryptoTrading;

    //set the cryptoTrading variable 
    function setcryptoT(uint _tradeId,uint _quantity,uint _price,string memory _traderName) public {
        cryptoTrading.tradeId= _tradeId;
        cryptoTrading.quantity = _quantity;
        cryptoTrading.price = _price;
        cryptoTrading.traderName = _traderName;

    }

    //get the crytpoTrading varibale

    function getCryptoT() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading.tradeId,cryptoTrading.quantity,cryptoTrading.price,cryptoTrading.traderName);
    }

    //define a array of struct to store multiple categories

    Trading[] public cryptoTradingA;
    //set cryptoTrading array by declaring a temp struct within the function and push it to the array.
    function CTA(uint _tradeId,uint _quantity,uint _price,string memory _traderName) public {
        Trading memory tempStruct = Trading({
            tradeId : _tradeId,
            quantity : _quantity,
            price : _price,
            traderName : _traderName
        });
        cryptoTradingA.push(tempStruct);

    }
}

// 2. 

contract structsSol {

    struct Trading2 {
        uint tradeId2;
        uint quantity2;
        uint price2;
        string traderName2;
    }

    Trading2 public cryptoTrading2;
    //set cryptoTrading2
    function setCT2(uint _tradeId2,uint _quantity2,uint _price2,string memory _traderName2) public {
        cryptoTrading2.tradeId2 = _tradeId2;
        cryptoTrading2.quantity2 = _quantity2;
        cryptoTrading2.price2 = _price2;
        cryptoTrading2.traderName2 = _traderName2;
    }
    //getter 
    function getCT2() public view returns(uint,uint,uint,string memory) {
        return (cryptoTrading2.tradeId2,cryptoTrading2.quantity2,cryptoTrading2.price2,cryptoTrading2.traderName2);
    }

    // an array of structs.

    Trading2[] public CTA2;
    //create a function and a temporary struct to push to the array.

    function setCTA2(uint _tradeId2,uint _quantity2,uint _price2,string memory _traderName2) public {
        Trading2 memory tempStruct2 = Trading2({
            tradeId2:_tradeId2,
            quantity2:_quantity2,
            price2:_price2,
            traderName2:_traderName2
        });
        CTA2.push(tempStruct2);
    }
}

// 3.

contract ArrayOfstruct {
    struct Trading3 {
        uint tradeId3;
        uint quantity3;
        uint price3;
        string traderName3;
    }

    Trading3 public cryptoTrading3;

    //set cryptoTrading3.
    function setCT3(uint _tradeId3,uint _quantity3,uint _price3,string memory _traderName3) public {
        cryptoTrading3.tradeId3=_tradeId3;
        cryptoTrading3.quantity3 = _quantity3;
        cryptoTrading3.price3 = _price3;
        cryptoTrading3.traderName3 = _traderName3;

    }

    //Array of a struct
    Trading3[] public CTA3;
    //set CTA3 by creating a temporary struct within the function and push it to the array variable.
    function setCTA3(uint _tradeId3,uint _quantity3,uint _price3,string memory _traderName3) public {
        Trading3 memory TempStruct3 = Trading3({
            tradeId3:_tradeId3,
            quantity3:_quantity3,
            price3:_price3,
            traderName3:_traderName3
        });
        CTA3.push(TempStruct3);

    }
}

// 4.
contract SS {
    struct Trading4 {
        uint tradeId4;
        uint quantity4;
        uint price4;
        string traderName4;
    }

    Trading4 public cryptoTrading4;
    //set cryptoTrading3
    function setCT3(uint _tradeId4,uint _quantity4,uint _price4,string memory _traderName4) public {
        cryptoTrading4.tradeId4 = _tradeId4;
        cryptoTrading4.quantity4 = _quantity4;
        cryptoTrading4.price4 = _price4;
        cryptoTrading4.traderName4 = _traderName4;
    }

    // an array of struct
    Trading4[] public CTA4;
    function setCTA4(uint _tradeId4,uint _quantity4,uint _price4,string memory _traderName4) public {
        Trading4 memory tempStruct4 = Trading4({
            tradeId4:_tradeId4,
            quantity4:_quantity4,
            price4:_price4,
            traderName4:_traderName4
        });
        CTA4.push(tempStruct4);
    }
}

// 5.

contract solidityStruct {
    struct Trading5 {
        uint tradeId5;
        uint quantity5;
        uint price5;
        string traderName5;
    }

    Trading5 public cryptoTrading5;
    function setCT5(uint _tradeId5,uint _quantity5,uint _price5,string memory _traderName5) public {
        cryptoTrading5.tradeId5=_tradeId5;
        cryptoTrading5.quantity5 = _quantity5;
        cryptoTrading5.price5=_price5;
        cryptoTrading5.traderName5= _traderName5;

    }

    //an array of struct
    Trading5[] public CTA5;
    function setCTA5(uint _tradeId5,uint _quantity5,uint _price5,string memory _traderName5) public {
        Trading5 memory tempStruct5 = Trading5({
            tradeId5:_tradeId5,
            quantity5:_quantity5,
            price5:_price5,
            traderName5:_traderName5
        });
        CTA5.push(tempStruct5);

    }
}
