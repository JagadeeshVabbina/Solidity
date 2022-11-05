//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract mappingInSol {
    mapping(uint => string) public myMapping;

    //setter 
    function setmyMap(uint key,string memory value) public {
        myMapping[key] = value;

    }
}

// 2. 

contract mp2 {
    mapping(address => uint) public myMap2;

    //setter
    function setmyMap2(address _key,uint _value) public {
        myMap2[_key] = _value;

    }
}

// 3.

contract mp3 {
    mapping(bool => uint) public myMap3;

    //setter 
    function setmyMap3(bool key,uint value) public {
        myMap3[key] = value;
        
    }
}

// 4. 

contract mp4 {
    mapping(int => uint) public myMap4;

    //setter
    function setMyMap4(int key,uint value) public {
        myMap4[key] = value;
    }
}

// 5.

contract myMapping5 {
    mapping(uint => address) public myMap5;
    
    //setter
    function setMyMap5(uint key,address value) public {
        myMap5[key] = value;

    }
}
