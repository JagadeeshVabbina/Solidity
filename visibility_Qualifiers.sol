//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
/** @title Contracts explaining various visibility scenarios
* @author Arjun Jagadeesh
*/
contract A {
    uint public var1 = 27;
    uint public var2 = 28;

    function getVara1() public view returns(uint) {  //public
        return var1;
    }

    function getVara2() external view returns(uint) {  //external
        return var2;
    }

    function getVara3() internal view returns(uint) { //internal -> only visible within the contract and for derived contract as well
            return var1;
    }

    function getVara4() private view returns(uint) {  //private
           return var2;
    

    }

}

contract B {
    A public a = new A();  //Contract A instance will be initialized here
    uint public varb1 = a.getVara1(); //public
    uint public varb2 = a.getVara2(); //external
    //uint public vara3 = a.getVara3();  internal funs are not visible to external contracts
    //uint public var4 = a.getVara4(); private are not accessible to external contracts





}

contract C is A {   // derived contract is defined as such
uint public vara3 = getVara3();  //to verify the internal fun from the external account
//uint public vara4 = getVara4(); //private functions are not accessible to derived contracts

}
 
