//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
interface ICounter {
    function count() external view returns(uint);
    function Inc() external;
}

contract callContract {
    uint public count;
    //_counter is the address of the Counter contract
    function callInterface(address _counter) external {
        ICounter(_counter).Inc();
        count = ICounter(_counter).count();
    }
}

// 2.

interface ICounter2 {
    function count() external view returns(uint);
    function Inc() external;
}

contract callContract2 {
    uint public count;
    function callInterface2(address _counter2) external {
        ICounter2(_counter2).Inc();
       count = ICounter2(_counter2).count();
    }
}

// 3.

interface ICounter3 {
    function count() external view returns(uint);
    function Inc() external;
}

contract  callContract3 {

    uint public count;
    function callinterface3(address _counter) external {
        ICounter(_counter).Inc();
        count = ICounter(_counter).count();
    }
}

// 4.
interface ICounter4 {
    function count() external view returns(uint);
    function Inc() external ;
}

contract callContract4 {
    uint public count;
    function callInterface4(address _counter) external {
        ICounter(_counter).Inc();
       count = ICounter(_counter).count();

    }
}

// 5.
interface ICounter5 {
    function count() external view returns(uint);
    function Inc() external;    
}

contract callContract5 {
    uint public count;
    function callInterface5(address _counter) external {
        ICounter(_counter).Inc();
        count = ICounter(_counter).count();
    }
}
