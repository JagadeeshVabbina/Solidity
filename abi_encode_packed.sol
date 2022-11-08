//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract encodePackedSC {
    //encode:- returns bytes ; there will padding
    function encode() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //encodePacked :- there is no padding 
    function encodePacked() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256
    function getKeccak256() public pure returns(bytes32) {
        // return keccak256("abc","xyz"); starting from v0.5.0 multiple arguments are not allowed.
        return keccak256(abi.encodePacked("abc","xyz"));
        // return uint(keccak256(abi.encodePacked("abc","xyz"))); //need to change returns type as uint.
    }
}

// 2. abi.encode and abi.encodePacked
contract encodePacked2 {
    //abi.encode
    function encode2() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //abi.encodePacked
    function encodeP2() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256
    function get2keccak256() public pure returns(bytes32) {
        // return keccak256("abc","xyz"); //from 0.5.0 multiple args are not allowed.
         return keccak256(abi.encodePacked("abc","xyz"));
        // return uint(keccak256(abi.encodePacked("abc","xyz"))); //need to change returns as uint.

    }
}

// 3.
contract encodePacked3 {
    //encode
    function encode3() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //encodePacked
    function encodeP3() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256
    function get3keccak() public pure returns(uint) {
        return uint(keccak256(abi.encodePacked("abc","xyz")));
    }
}

// 4.
contract encodePacked4 {
    //encode
    function encode4() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //encodePacked
    function encodeP4() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }
    //keccak256
    function get4keccak256() public pure returns(uint) {
        return uint(keccak256(abi.encodePacked("abc","xyz")));
    }
}

// 5.
contract encodepacked5 {
    //encode
    function encode5() public pure returns(bytes memory) {
        return abi.encode("abc","xyz");
    }

    //encodePacked
    function encodeP5() public pure returns(bytes memory) {
        return abi.encodePacked("abc","xyz");
    }

    //keccak256
    function get5Keccak256() public pure returns(uint) {
        return uint(keccak256(abi.encodePacked("abc","xyz")));
    }
}
