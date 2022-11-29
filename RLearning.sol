

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract SD {
     /* data types:-  1. Value Type:- stores value directly within storage/memory
                                      do not store more than 32 bytes(256 bits)
                                       int,uint,bool,address,bool,bytes and enum.

                       2. Reference Type:- stores the address of location where the value is stored.
                                           can store more than 32 bytes.
                                           strings,structs,arrays(fixed/dynamic) and Mapping(Key/Pair).                
      */

      int8 public myInt8 = -128; //int signed integer--> stores both positive and negative numbers.int8 = 2**7 to 2**7 - 1;
      uint8 public myUint8 = 255; //uin8 = 0 to 2**8 - 1; default value is zero.
      bool public isDone = true; //default value is false;
      address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //20byte hexadecimal value
      bytes1 public b1 = 'a';
      bytes2 public b2 = 'ab';
      bytes3 public b3 = 'abc';
      bytes4 public b4 = 0x25262728;
      
      //get bytes length
      function getBlen() public view returns(uint) {
          return b4.length;
      }

      //set b5
      function getBytes(uint i) public view returns(bytes1) {
          return b4[i];
      }
      
      //enum
      enum claimStatus {Approved,Rejected}
      claimStatus public status;

      //set status
      function setStatus(uint _claim) public {
          if (_claim > 100) {
              status = claimStatus.Rejected;
          }

          else if (_claim < 100) {
              status = claimStatus.Approved;
          }
      }

      //get status
      function getStatus() public view returns(claimStatus) {
          return status;
      }

      //address 
      address public contract_owner;

      constructor() {
          contract_owner = msg.sender;
      }

      address payable public receiver;
      uint public amount;
      uint public balance;

      //send eth
      function sendTo(address payable _receiver) public payable returns(uint) {
          receiver = _receiver;
          amount = msg.value;
          receiver.transfer(amount);
          balance = receiver.balance;
          return balance;
      }
}

//inheritance and function visibility
contract bankA {
    uint public balance = 29;

    //public 
    function setPub() public view returns(uint) {
        // uint _ext = setExt(); This is an external function.
        return balance;
    }

    //external
    function setExt() external view returns(uint) {
        return balance;
    }

    //private
    function setPvt() private view returns(uint) {
        return balance;
    }

    //internal
    function setIntr() internal view returns(uint) {
        return balance;
    }
}

contract bankB {

    bankA public a = new bankA();
    uint public pub = a.setPub();
    uint public ext = a.setExt();
   // uint public pvt = a.setPvt(); This is a private function.
   // uint public intr = a.setIntr(); This is an internal function.
}

contract bankC is bankA {
    uint public intr = setIntr();
}

//arrays (Fixed && Dynamic)
//Fixed :- only length member

contract Arrays {
    uint[3] public ids = [1,2,3];
    uint[4] public Teams;

    function setTeams(uint i,uint _Teams) public {
        Teams[i] = _Teams;
    }

    function getTeams() public view returns(uint) {
        return Teams.length;
    }

    //dynamic has push and pop members.
    uint[] public amounts;
    //set amounts
    function setAmounts(uint _amounts) public {
        amounts.push(_amounts);
    }

    function getAmountsLen() public view returns(uint) {
        return amounts.length;
    }

    function popAmounts() public {
        amounts.pop();
    }
}


