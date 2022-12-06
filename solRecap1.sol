//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract solContract {

    string greeting;

    constructor() {
        greeting = "Hello World!";
    }

    //getter
    function get() public view returns(string memory) {
        return greeting;
    }

    //setter
    function set(string memory _greet) public {
        greeting = _greet;
    }
}

contract vars {
    address public sender = msg.sender;
    address public origin = tx.origin;
    uint public _28a; //variable names can not start with a numberic 
    //do not use reserved keyword as variable names such as break,continue,if, years..etc
    uint private age = 30;
    string internal name = "Dev";

    function getAge() public view returns(uint) {
        return age;
    }

    function getname() public view returns(string memory) {
        return name;
    }

    //visibility:- public,internal and private
    //Note:- in blockchain we can read all the variables regardless of their visibility.
}

contract opsLps {
    uint public num ;
    uint public sum ;
    uint public num1;
    uint public sum1;

    function NUM(uint _num) public returns(uint) {
        return num = ++_num; //first increment and then assignment
    }

    function SUM(uint _sum) public returns(uint) {
        return sum = _sum++;  //first assignment and then increment. same thing with --
    }

    function NUM1(uint _num1) public returns(uint) {
        return num1 = --_num1;

    }

    function SUM1(uint _sum1) public returns(uint) {
        return sum1 = _sum1--;
    }
     
     // + - * / % ** Arthmatic operators
    //> < >= <= != == comparison operators
    // && || ! Logical operators
    // = += -= *= assignment operators
    //tenary operator return <condition> ? <if true> : <if false>

    bool public id = true;
    bool public id1 = false;

    function logic() public view returns(bool) {
        return id && id1; //if both operands are true then it evaluate to true.
    }

    function logicOr() public view returns(bool) {
        return id || id1; //even if one of the operands is true, it evaluate to true.
    }

    // !
    function Not() public view returns(bool) {
        return !id;
    }

    function Notid1() public view returns(bool) {
        return !id1;
    }

    // +=
    uint public count = 28;

    function PlusEqual() public returns(uint) {
        return count +=8;  //=-,=+,=*,=/ not allowed.
    }

    function equalPlus() public returns(uint) {
        return count -=8;
    }

    //tenary 
    function tenary() public view returns(bool) {
        return count == 28 ? true:false;
    }
}
