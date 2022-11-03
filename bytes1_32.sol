//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract bytesContract {
    //bytes are also called as fixed byte arrays .
    bytes1 public var1 = 'a'; //stores 8 bit 1 * 8;
    bytes2 public var2 = 'ab'; //stores 16 bit 2 * 8;
    bytes3 public var3 = 'abc'; 
    bytes4 public var5 = 0x12345678;

    // function to fetch bytes values based on index.

    function getBytes(uint i) public view returns(bytes1) {
        return var2[i];
    }

    // to get the length of the bytes variable

    function getBLength() public view returns(uint) {
        return var3.length;
    }
}

// 2.

contract bytesArray {

    bytes1 public b1 = 'a';
    bytes2 public b2  = 'ab';
    bytes3 public b3 ='abc';
    bytes4 public b4 =0x12345678;

    function getByte(uint i) public view returns(bytes1) {
        return b3[i];
    }

    //function to get the length.

    function getBytesLen() public view returns(uint) {
        return b3.length;
    }
}

// 3. 

contract AsciiTable {
    bytes1 public bt1 ='x';
    bytes2 public bt2 = 'xy';
    bytes3 public bt3 ='xyz';
    bytes4 public bt4 = 0x21222324;

    //get bytes by index
    
    function getbIndex(uint i) public view returns(bytes1) {
        return bt3[i];
    }

    //get bytes variable length

    function getbtLen() public view returns(uint) {
        return bt3.length;
    }
}

// 4. 

contract storeInBytes {

    bytes1 public a1 = 'j';
    bytes2 public a2 = 'aj';
    bytes3 public a3 = 'ajr';
    bytes4 public a4 = 0x28253027;

    function getAJ(uint i) public view returns(bytes1) {
        return a4[i];
    }

    function getLen() public view returns(uint) {
        return a4.length;
    }
}

// 5. 

contract satoshi {
    bytes1 public Nakamoto1 = 'A';
    bytes2 public Nakamoto2 = 'B';
    bytes3 public Nakamoto3 = 'CAN';
    bytes4 public Nakamoto4 = 0x25262728;

    function getBit(uint i) public view returns(bytes1) {
        return Nakamoto3[i];
    }

    function getBCLen() public view returns(uint) {
        return Nakamoto3.length;
    }
}

 
