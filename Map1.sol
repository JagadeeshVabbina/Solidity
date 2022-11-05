//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;
contract Dapp {
    mapping(uint => string) public myMapping;

    constructor () {
        myMapping[1] ="Ethereum Foundation";
        myMapping[2] = "Vitalik Buterin";
        myMapping[3] = "Satoshi Nakamoto";
    }
}

// Vinit
contract contractMap {
    mapping(address => uint) public Map1;

    //setter
    function setMap1(uint _value) public {
        Map1[msg.sender] = _value;

    }

    //get Map1
    function getMap1(address _address) public view returns(uint) {
        return Map1[_address];
    }
}

// 2.

contract Mapping2 {
    mapping (address => uint) public Map2;

    //set Map2
    function setMap2(uint _value) public {
        Map2[msg.sender] = _value;
    }

    //getter

    function getMap2(address _address) public view returns(uint) {
        return Map2[_address];

    }
}

// 3.

contract Mapping3 {
    mapping(address => uint) public Map3;

    //setter
    function setmap3(uint _value) public {
        Map3[msg.sender] = _value;
    }

    //getter
    function getMap3(address _address) public view returns(uint) {
        return Map3[_address];
    }
}

// 4.

contract Mapping4 {
    mapping(address => uint) public Map4;

    //set Map4
    function setMap4(uint _value) public {
        Map4[msg.sender] = _value;
    }

    //get Map4
    function getMap4(address _address) public view returns(uint) {
        return Map4[_address];
    }
}

// 5.
contract Mapping5 {
    mapping(address => uint) public Map5;

    //set Map5
    function setMap5(uint _value) public {
        Map5[msg.sender] = _value;
    }

    //get Map5
    function getMap5(address _address) public view returns(uint) {
        return Map5[_address];
    }
}
