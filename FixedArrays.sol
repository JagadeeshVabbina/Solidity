//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ArraysFD {
    //bytes1_32
    bytes1 public var1 = 'a';
    bytes2 public var2 ='ab';
    bytes3 public var3 ='abc';
    bytes4 public var4 = 0x25262728;
    int[2] public intVar = [-27,-28];
    int8[3] public int8Var;

    //get bytes with index value
    function getBytes(uint i) public view returns(bytes1) {
        return var3[i];
    }

    //to get bytes length.

    function getLen() public view returns(uint) {
        return var3.length;
    }

    //int fixed array
    function int8Fun(uint i,int8 _int8Var) public {
        int8Var[i] = _int8Var;

    }

    function getInt8Len() public view returns(uint) {
        return int8Var.length;
    }
}

// 2

contract fixedArray {

    bytes1 public b1 = 'a';
    bytes2 public b2 = 'ab';
    bytes3 public b3 = 'abc';
    bytes4 public b4 = 0x25262728;

    int[2] public fixedIntArr = [-27,-28];
    int[3] public argsArr; 

    // function get get values by index of bytes
    function getIndex(uint i) public view returns(bytes1) {
        return b3[i];
    }
    // to get the length
    function getILen() public view returns(uint) {
        return b3.length;
    }

    //int array
    function setInt(uint i,int _argsArr) public {
        argsArr[i] = _argsArr;
    }
    // to get the length.
    function getIntLen() public view returns(uint) {
        return argsArr.length;
    }
}

//3 .

contract arraysFixed {
    bytes1 public bts1 ='a';
    bytes2 public bts2 = 'ab';
    bytes3 public bts3 = 'abc';
    bytes4 public bts4 =0x25262728;

    //get values based on index
    function getB(uint i) public view returns(bytes1) {
        return bts4[i];
    }
    //get the the length of bytes variable.
    function getLenB() public view returns(uint) {
        return bts4.length;
    }

    string[2] public Names1 = ["Smart","Contract"];
    string[3] public Names2;
    // set Names2 array.
    function setStr(uint i,string memory _Names2) public {
        Names2[i] =_Names2;
    }

    // get the Names2 Array size
    function getStrL() public view returns(uint) {
        return Names2.length;
    }
}

// 4.

contract ArraysType1 {
    bytes1 public bnr1 = 'a';
    bytes2 public bnr2 = 'ab';
    bytes3 public bnr3 ='abc';
    bytes4 public bnr4 = 0x25262728;

    //get bytes value based on index.
    function getValue(uint i) public view returns(bytes1){
        return bnr3[i];
    }
    //get the bytes array length
    function bytesLen() public view returns(uint) {
        return bnr3.length;
    }

    address[2] public addr1 = [0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2];
    address[3] public addr2;

    //set addr2
    function seraddr(uint i,address _addr2) public {
        addr2[i] =_addr2;
    }

    //get addr2 length
    function getAddrLen() public view returns(uint) {
        return addr2.length;
    }
}

// 5.

contract myFixedArray {
    bytes1 public s1 = 'a';
    bytes2 public s2 = 'ab';
    bytes3 public s3 ='abc';
    bytes4 public s4 = 0x25262728;

    //get value by index

    function getI(uint i) public view returns(bytes1) {
        return s3[i];
    }

    function lenOfB() public view returns(uint) {
        return s3.length;
    }

    bool[2] public decisiveness = [true,false];
    bool[3] public decisiveness2;

    //set the bool array
    function setBool(uint i,bool _decisiveness2) public {
        decisiveness2[i] = _decisiveness2;
    }

    //get bool length
    function BoolLen() public view returns(uint) {
        return decisiveness2.length;
    }
}
