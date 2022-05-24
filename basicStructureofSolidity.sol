pragma solidity ^0.5.1; //compiler works from 0.5.1(including) till 0.6.0(not including)
//pragma solidity >=0.4.0 <0.6.0; //memory keyword is introduced from 0.5.0 while declaring string

contract Empdetails {
    string EmpName; //State variables will be stored in the blockchain permanently.
    uint age;

//constructor is executed at once during deployment.
// it is used not to hard code the state variables ex string Empname = "AJ";
    constructor(string memory _EmpName,uint _age) public {
        EmpName = _EmpName;
        age = _age;

    }

    function getEmpdetails() public view returns(string memory,uint) {
        return (EmpName,age);
    }

    function setEmpdetails(string memory _EmpName,uint _age) public {
        EmpName = _EmpName;
        age = _age;
    }


}
