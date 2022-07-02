//SPDX-License-Identifier: MIT 
//GPL;UNLICENCED;Apache-2.0-only;GPL-3.0 OR GPL-3.0 licenses can declared in this format as well
pragma solidity >=0.7.0 <0.9.0; //Solidity compiler version
import "@openzeppelin/contracts/utils/Strings.sol";
contract ethContract {
    //State Variables
    bool public canVote = true;
    uint private myAge = 19;//default is uint256
    int internal favNum = 3;
    string name = "Arjun";

    constructor() {} //will be called one time at deployment
    /* uint8,uint16,uint32,
    * uint8 = 2^8 -1;uint16 = 2^16-1;uint32 = 2^32 -1;
    */

    //Type casting
    uint toBig = 255;
    uint8 justright = uint8(toBig);

    //function to do adding of two numbers
    //function functionName(parameters) scope returns() {statements}
    function getSum(uint _num1,uint _num2) public pure returns(uint) {
        uint _sum = _num1 + _num2;
        return _sum;
    }

    function getSum2() public pure returns(uint) {
        uint _num1 = 20;
        uint _num2 = 8;
        uint _sum = _num1 + _num2;
        return _sum;
    }

    //functions to change state value and returning it
    uint specialVal = 18;
    function changeSV(uint _val) external {
        specialVal = _val;
    }
    function getSV() external view returns(uint) {
        return specialVal;
    }

    //Math operations and error handling
    function doMath(int _num1,int _num2) public pure returns(int,int,int,int,int,int) {
        require(_num2 != 0,"Second number should not be zero");

        assert(_num2 > 0);
        
        if (_num2 < 0) {
            revert("_num2 should not be less than zero");
        }

        int _add = _num1 + _num2;
        int _sub = _num1 - _num2;
        int _mul = _num1 * _num2;
        int _div = _num1 / _num2;
        int _mod = _num1 % _num2;
        int _sql = _num1 ** 2;

        return(_add,_sub,_mul,_div,_mod,_sql);

    }

    //function to generate a random number
    function getRandNum() public view returns(uint) {
        uint random = uint(keccak256(abi.encode(block.timestamp)));
        return random;
    }

    //function to concatinate two strings

    function addStr(string memory _str1, string memory _str2) public pure returns(string memory) {
        return string(abi.encodePacked(_str1," ", _str2));
    }

    //function to get the number of letters in a string
    function getNumltrs(string memory _str) public pure returns(uint) {
               bytes memory _byte = bytes(_str);
               return _byte.length;
    }

    //Conditions
    //conditional operators =,!=,>,<,>=,<=
    //logical operators || && !
    uint public age = 6;
    function whatSchool() public view returns(string memory) {
        if (age < 5) {
            return "Stat Home";
        }

        else if (age >5 && age <=6) {
            return "Go to kindergarten";
        }

        else if (age >=6 && age <17) {
            uint _grade =age-5;
            //import "@openzeppelin/contracts/utils/Strings.sol"; openzeppelin library
            string memory _Str=Strings.toString(_grade);
            return string(abi.encodePacked("Grade is ", _Str));
        }
        else {
            return "Go to college";
        }


    }

    //Arrays => Static and Dynamic
    uint[] public arr1;
    uint[10] public arr2;
    uint[] public numList =[1,2,3,4,5];

    //function to add values to a array

    function addtoArray(uint _num) public {
        arr1.push(_num);
    }

    //function to remove values from array
    function  removeFromArray() public {
        arr1.pop();
    }
    //function that returns the length of an array
    function getArrayLength() public view returns(uint) {
        return arr1.length;
    }

    //funtion to get the arr1
    function getArr1() public view returns(uint[] memory) {
        return arr1;
    }

    //funtion to set particular index to zero

    function setIndextoZero(uint _index) public {
        delete arr1[_index];
    }

    //function to remove a particular index
    function removeIndex(uint _index) public {
        for (uint i =_index;i<arr1.length-1;i++) {
            arr1[i] = arr1[i+1];
        }
        arr1.pop();
    }
    //to sum the vaules of array numList[]
    function sumArray() public view returns(uint) {
        uint _sum =0;
        for (uint i =0;i<=numList.length-1;i++) {
            _sum += numList[i];
        }
        return _sum;


    }
    //with loops
    function sumArray2() public view returns(uint) {
        uint _i =0;
        uint _sum = 0;
        while (_i <= arr1.length-1) {
            _sum += numList[_i];
            _i++;
        }
        return _sum;
    }








}

