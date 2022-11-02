//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
/// @author AJ

contract actQualifier {
    uint public Var1 = 25;
    uint public Var2 = 4;

    //view :- can read the blockchain state but can not modify the state.

    function setView() public view returns(uint _total) {
        _total = Var1 + Var2;
        return _total;
    }

    //pure:- Can not read/modify the blockchain state.

    function setPure() public pure returns(uint _sum) {
        _sum = 21 +7;
        return _sum;
    }

    //fallback function :- a default function to receive ether

    fallback() external payable {

    }

    receive() external payable {

    }

}

// 2. 

contract ViewPure {
    bool public Reason = true;
    bool public Purpose = true;

    //view:- only read the state , cant modify.

    function setAct() public view returns(bool ,bool) {
        return (Reason,Purpose);
    }
    // pure:- can read/modify the state.
    function setAct2() public pure returns(bool){
        bool philosophy = true;
        return philosophy;
    }

    //fallback & receive

    fallback() external payable {

    }

    receive() external payable {

    }
 }

 // 3.

 contract sendEther {
     address public receiver =0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

     //view:- Can read the blockchain state , but can not modify.

     function getAddr() public view returns(address) {
         return receiver;
     }

     //pure:- can not read/modify the state.

     function getLocalAddr() public pure returns(address) {
         address localAddr = 0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C;
         return localAddr;
     }

     fallback() external payable {


     }

     receive() external payable {

     }
 }

 // 4.

 contract NFTName {
     string public PreProdNFTs = "MMM";

     //view: can read the blockchain state, can not modify it.

     function getNFT() public view returns(string memory) {
         return PreProdNFTs;
     }

     //pure:- can not read/modify the blcokchain state.

     function getRehearsalNFT() public pure returns(string memory) {
         string memory rehearsals = " Pre PROD rehearsals";
         return rehearsals;
     }

     fallback() external payable {


     }
     receive() external payable {


     }
 }

 // 5.

 contract crowdfund {
     uint public donation_amount = 1000;

     //view:- can read the state , can not modify .

     function getDonation() public view returns(uint) {
         return donation_amount;
     }

     //pure:- can not read/modify the state;

     function setLocalDonation() public pure returns(uint) {
         uint Donars_amount = 100;
         return Donars_amount;
     }

     fallback() external payable {


     }
      receive() external payable {

          
      }
 }
