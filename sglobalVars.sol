//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract globalVars {

function gblfunction() public view returns(address,uint,uint) {
   address sender = msg.sender; //whoever calls the function
   uint blockTime=block.timestamp; //seconds since uinx epcoh (1 Jan 1970)
   uint blockNumber=block.number;
   //uint amount = msg.value //need to declare function with payable 
   return(sender,blockTime,blockNumber);
   }
}


