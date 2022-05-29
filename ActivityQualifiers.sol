//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract actQual {
    uint public var1 = 27;
    uint public var2 = 3;

    //view, enables to access the state, but not allows to modify the state
    function viewfun() public view returns(uint _total) {
        _total = var1 + var2;
        //var1= 28; throws an error as it is an attempt modify the state
        return _total;
    }

    //pure , the state will not accessible

    function purefun() public pure returns(uint _total) {
        // return var1; will throw an error as ,trying to view the state
        return _total = 27 + 3;

    }

    fallback() external payable { //payable enables to receive ether

    }

    receive() external payable {

    }
}


