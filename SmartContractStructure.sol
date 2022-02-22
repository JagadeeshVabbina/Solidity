// The structure of a Smart Contract 
it basically will have two locations one is for defining Variables and otherone is for Manipulation these Variables.

Example:-
//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12 //Which means only versions ranging from 0.8.12 up untill but not including 0.9.0 will work

//we define a contract with a contract keywork
contract MyFirst {
//we define a variable which is like a slot in the database where we can query and store data
 uint firstVar;

//define a function where we can manipulate variables or we can pass here on the function as arguments
function MyFun() external {
 return firstVar;
}
}

// we can create multiple contracts in the single source file where they can interact with each other

 
