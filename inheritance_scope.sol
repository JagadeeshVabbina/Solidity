//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
/** @author ArjunJagadeesh
* @title inheritance and visibilty qualifiers in solidity */
contract A {
int public var1 = -28;

//public :- can be accessed both externally and internally
function getVar1() public view returns(int) {
    return var1;
}

//External :- only visible externally ,cant access internal like int x = getVar2; form a function 
function getVar2() external view returns(int) {
    // int x = getVar3(); private function can be accessed within the same contract.
    return var1;
}

//private :- only visible within the contract , cant even access from derived contract

function getVar3() private view returns(int) {
    // int x = getVar4(); internal function can be accessed within the same contract.
    return var1;
}

//internal :- within the contract and derived contracts can access.

function getVar4() internal view returns(int) {
    return var1;
}

}

contract B {

    A public a = new A();
    int public p1 = a.getVar1();
    int public x1 = a.getVar2();
    // int public pr1 = a.getVar3(); this is a private function.cant be accessed from external contracts.
    // int public intr1 = a.getVar4(); this is an internal function. can not be accessed from external contract


}

contract C is A {
    // int public pr1 = getVar3(); This is a private function.
    int public intr1=getVar4();
}

// 2.

contract X {

    uint public Name = 28;

    //public :- can be accessed from externally and derived contracts as well.
    function getName1() public view returns(uint) {
        // uint ext = getName2(); external function can not accessed within the same contract.
        return Name;
    }

    //external :- can be accessed both externally and from derived contracts but not with the same contract.

    function getName2() external view returns(uint) {
        return Name;
    }

    //private :- can be accessed only within the contract.

    function getName3() private view returns(uint) {
        return Name;
    }

    //internal :- can be accessed within the same contract and from the derived contract.

    function getName4() internal view returns(uint) {
        return Name;
    }


}

contract Y {

X public x = new X();    
uint public pbl = x.getName1();
uint public ext = x.getName2();
// uint public pvt = x.getName3(); This is a private function.
// uint public intr = x.getName4(); This is an internal function.


}

contract Z is X {
    // uint public prvt = getName3(); This is a private function.
    uint public intr = getName4();
}


//3.
contract A1 {

    bool public Logic = true;

    //Public :- can be accessed both from externally,internally and from derived contracts as well.
    function getLogic1() public view returns(bool) {
        // bool b1 = getLogic2(); cant access External function from within the same contract 
        return Logic;
    } 

    //external :- can be accessed both external,derived contracts but not within the same contract.

    function getLogic2() external view returns(bool) {
        // bool prtBool = getLogic3(); can be accessed as it is from within the contract
        return Logic;
    } 

    //private:- only accessed from the same contract .

    function getLogic3() private view returns(bool) {
       //  bool boolInt = getLogic4(); can be accessed.
        return Logic;
    }

    //internal:- can be accessed internally and from the derived contract.

    function getLogic4() internal view returns(bool) {
        return Logic;
    }


}

contract B1 {

A1 public a1 = new A1();
bool public boolpub = a1.getLogic1();
bool public boolExt = a1.getLogic2();
// bool public boolPrt = a.getLogic3(); This is a private function.
 //bool public boolIntr = a1.getLogic4(); //This is an internal function.
}

contract C1 is A1 {
  //bool public boolPrt = getLogic3();
  bool public boolIntr = getLogic4();
}

// 4.

contract X1 {

    address public Ether = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //public:- can be accessed externally,internally and from derived contracts as well.

    function getAddr1() public view returns(address) {
        // address locad = getAddr2(); external function cant accessed from internally.
        return Ether;
    }

    //external:- can be accessed from externally and from derived contracts.

    function getAddr2() external view returns(address) {
        // address prtAddr = getAddr3(); can be accessed 
        return Ether;
    }

    //private :- accessed only within the said contract.

    function getAddr3() private view returns(address) {
        return Ether;
    }

    //Internal :- can be accessed intenally and from the derived contract 

    function getAddr4() internal view returns(address) {
        return Ether;
    }




}

contract Y1 {

    X1 public x1 = new X1();
    address public pubAddr= x1.getAddr1();
    address public extAddr = x1.getAddr2();
    // address public prtAddr = x1.getAddr3(); This is a private function.
    // address public intrAddr = x1.getAddr4(); This is an internal function.



}

contract Z1 is X1 {
    // address public prtAddr = getAddr3(); This is a private function.
    address public intrAddr = getAddr4();
}

// 5.

contract bankAmerica {
    string public currency = "Dollar";

    //public:- can be accessed from internally,externally and from derived contracts as well.

    function getDollar1() public view returns(string memory) {
        // string memory extStr = getDollar2(); This is an external function ,cant be called internally.
        return currency;
    }

    //external:- can be accessed from externally and from derived contracts.
    function getDollar2() external view returns(string memory) {
        // string memory prvtStr = getDollar3(); can be accessed as from within
        return currency;
    }

    //private:- only accessed within the contract.

    function getDollar3() private view returns(string memory) {
        // string memory IntrStr = getDollar4(); can be accessed as from within
        return currency;
    }

    //internal:- can be accessed from internally and from derived contracts.
    function getDollar4() internal view returns(string memory) {
        return currency;
    }


}


contract bankEngland {
    bankAmerica public bA = new bankAmerica();
    string public pubStr=bA.getDollar1();
    string public extStr = bA.getDollar2();
    // string public prvtStr = bA.getDollar3(); This is a private function.
    // string public intrStr = bA.getDollar4(); this is an internal function.


}

contract bankIndia is bankAmerica {
    // string public prvtStr =getDollar3(); This is a private function.
    string public IntrStr = getDollar4();

}
