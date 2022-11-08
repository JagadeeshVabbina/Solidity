//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract MathCrypt {
    //1.addmod(4,5,6) = (4+5) % 6 = 3.
    function getAddmod(uint x,uint y,uint z) public pure returns(uint _output) {
        _output = addmod(x,y,z);
        return _output;
    }

    //2.mulmod(4,5,6) = (4x5) % 6 = 2.
    function getMulmod(uint a,uint b,uint c) public pure returns(uint _result) {
        _result = mulmod(a,b,c);
        return _result;

    }

    //3. Keccak256
    function getKeccak256(bytes memory _name) public pure returns(bytes32) {
        return keccak256(_name);
    }
}

// 2.

contract Math_Crypto2 {
    //addmod 
    function addMod2(uint x,uint y,uint z) public pure returns(uint _result) {
        _result = addmod(x,y,z);
        return _result;
    }

    //mulmod
    function mulMod2(uint a,uint b,uint c) public pure returns(uint _output) {
        _output = mulmod(a,b,c);
        return _output;
    }

    //keccak256
    function get1keccak256(bytes memory _input) public pure returns(bytes32) {
        return keccak256(_input);
    }
}

// 3.
contract MathCrypt3 {
    //addmod
    function addMod3(uint x,uint y,uint z) public pure returns(uint result) {
        result = addmod(x,y,z);
    }

    //mulmod
    function mulMod3(uint a,uint b,uint c) public pure returns(uint output) {
        output = mulmod(a,b,c);
        return output;
    }

    //keccak256 
    function get2keccak256(bytes memory input) public pure returns(bytes32) {
        return keccak256(input);
    }
}

// 4.
contract MathCrypto4 {
    //addmod
    function addMod4(uint x,uint y,uint z) public pure returns(uint result) {
        result = addmod(x,y,z);
        return result;
    }

    //mulmod
    function mulMod4(uint a,uint b,uint c) public pure returns(uint output) {
        output = mulmod(a,b,c);
        return output;
    }

    //keccak256
    function get4keccak(bytes memory input) public pure returns(bytes32) {
        return keccak256(input);
    }
}

// 5.
contract MathCrypto5 {
    //addmod
    function addMod5(uint x,uint y,uint z) public pure returns(uint result) {
        result = addmod(x,y,z);
        return result; 
    }

    //mulmod
    function mulMod5(uint a,uint b,uint c) public pure returns(uint output) {
        output = mulmod(a,b,c);
        return output;
    }

    //keccak256
    function get5keccak(bytes memory input) public pure returns(bytes32) {
        return keccak256(input);
    }


}
