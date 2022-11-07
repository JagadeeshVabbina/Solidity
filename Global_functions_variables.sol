//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract deFiContract {
    ///Global variables and functions
    /*
    1. blockhash(uint i.e blocknumber) returns(bytes32):- hash of a given block.only works for 256 most recent,excluding the current blocks.
    2.block.coinbase => current block miner's address. (address payable) it should be payable.
    3.block.difficulty(uint:- current block gaslimit.
    4.block.number(uint):- current block number.
    5.block.timestamp(uint):- current block timestamp as seconds since uinix epoch.(00:00:00 UTC 01Jan1970)
    6.gasleft() returns(uint):-remaining gas.
    7.msg.data(bytes calldata) :- complete calldata.
    8.msg.sig(bytes4):- first four bytes of the calldata(ie function identifier).
    9.msg.sender(address payable): sender of the message(current call). //payable* 
    10.msg.value(uint):- number of ether(wei/gwei/ether) sent with the message.
    11.now(uint):- current block timestamp (alias for block.timestamp).
    12.tx.gasprice(uint):- gas price of the transaction.
    tx.origin(address payable):- sender of the transaction(full call chain).
     */

     //Mathematical and cryptographic functions.
     /*
     1.addmod(uint x, uint y, uint z) returns(uint):- compute (x +y) % z
     2.mulmod(uint x, uint y,uint z) returns(uint): compute (x*y) % z
     3.keccak256(bytes memory (any data)) returns(bytes32):- compute the keccak256 hash of the input.
     4.sha256(bytes memory) returns(bytes32):- compute the SHA-256 hash of the input.
     5.ripemd160(bytes memory) returns(bytes20):- compute RIPEMD-160 hash of the input.
     6.ecrecobery(bytes32 hash,uint8 v,bytes32 r,bytes32 s) returns(address):- recover the address associated with the 
                            public key from elliptic curve signature or returnzero on error.
     */


     // address related global functions/members
     /*
     1.<address>.balance (uint256):- balance of the address in wei.
     2.<address payable>.transfer(uint256 amount) :- send given wei to address,reverts on failure ,forwards 2300 gas stipend , not adjustable.
     3.<address payable>.send(uint256 amount) returns(bool):- send given amout of wei to address,returns false on failure,forwards 2300 gas stipend , not adjustable.
     4.<address>.call(bytes memory) returns(bool,bytes memory):- issue low level CALL with the given payload,returns success 
                                   condition,return data,forwards all available gas,adjustable.
     5.<address>.delegatecall(bytes memory) returns(bool,bytes memory):- issue low level DELEGATECALL with the given payaload and returns
                                  success condition,revert data,forwards all the available gas and adjustable.

     6.<address>.staticcall(byte memory) returns(bool,bytes memory):- issue the low level STSTICCALL with the given payload,returns the success condition
                                      forwards all the available gas  and adjustable                                                                

     */

     /// contract related
     /*
     1. this (current contract's type): the curent contract ,explicitly covertible to Address.
     2.selfdestruct(address payable recipient):- destroy the current contract,sendig its funda to the given Address.

     */

     // ABI Encoding and Decoding Functions.
     /*
     1.abi.decode(bytes memory encodeddData,(..)) returns(..):- ABI-decodes the given data,while th types are given in the parenthesis as second argument.
                                                                ex:- (uint a ,uint[2] memory b,bytes memory c)= abi.decode(data,(uint,uint[2],bytes))
     2. abi.encode(..) returns(bytes memory):- ABI-encodes the given arguments. there will be padding.
     3.abi.encodePacked(..) returns(bytes memory):- performs packed encoding of the given arguments: No padding.
     4.abi.encodeWithSelector(bytes4 selector,..) returns (bytes memory) :- ABI-encodes the given arguments starting from the second
                                                                           and prepends the given four-byte selector.
     5.abi.encodeWithSignature(string memory ,..) returns(bytes memory): Equivalent to abi.encodeWithSelector(bytes4(keccak256(bytes(signature))),..)                                                                                                                                 

     */


}
