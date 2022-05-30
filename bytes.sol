//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract bytesExp {
      //in general bytes are called fixed type arrays 
    bytes1 public cbytes1 = "a";  //saved as 0x61 because of ASCI standard
    bytes2 public cbytes2 = "ab"; //saved as 0x6162
    bytes3 public cbytes3 = "abc"; 
    bytes4 public cbytes4 = 0x12345678; //hex value
function getbytes(uint i) public view returns(bytes1) {
    return cbytes2[i];
}

//The length is always fixed as three whether values exist or not
function getLength() public view returns(uint) {
    return cbytes3.length;
}
}
  

