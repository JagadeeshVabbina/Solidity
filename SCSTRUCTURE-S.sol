//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17; // V0.6.8 introduced License and pragma is language construct denoting compiler version.
/* once deployed on the blockchain, contract will be identified 
with an address not with the contract name */
//pragma solidity >=0.4.0 <= 0.6.0;
contract bankDetails { 
// two things 1.Variables and 2. functions to manipulate the variables.

string empName;
uint empAge; //state variables are stored in Ethereum storage.

//constructor is a function that executed once at the time of deployment.It is used not to hardcode the state variables.

constructor (string memory _empName,uint _empAge) { //from 0.7.0 constructor visibility is not needed(public/external) and from 0.5 memory is needed for declaring strings
    empName = _empName;
    empAge = _empAge;
}

//getter function

function getempDetails() public view returns(string memory,uint) {
    return (empName,empAge);
} 


//setter function

function setempDetails(string memory _empName,uint _empAge) public {

    empName = _empName;
    empAge = _empAge;

}

}

