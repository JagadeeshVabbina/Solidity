//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
/* solidity is an high level object oriented programming language.
it is influenced by C++,Javascript and Python.
it is a curly brace language and the statement terminator is semicolon ;
The solidity file extension is .sol
it is  statically typed.(Need to declare variable type at compile time)
it is designed to target Ethereum Virtual Machine(EVM)
soliditycode -->solc -->bytecode and ABI --> EVM executes on nodes.
the current solidity version is 0.8.17
*/
contract EmpDetails {
    string EmpName;
    uint Age;

    constructor (string memory _EmpName,uint _Age) {
        EmpName = _EmpName;
        Age = _Age;
    }

    function getEmpDetails() public view returns(string memory,uint) {
        return (EmpName,Age);
        
    }

    function setEmpDetails(string memory _EmpName,uint _Age) public {
        EmpName = _EmpName;
        Age = _Age;

    }

}
