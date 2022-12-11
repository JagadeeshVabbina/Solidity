//SPDX-License-Identifier:MIT
pragma solidity 0.7.0;
//Integer wrap around
contract example {
    uint8 public variable; //range 0 to 255, default value is 0.

    function increment() public {
       variable++; 
    }
    // variable value can be manipulated to 255 by clicking once on this function.
    function decrement() public {
        variable--;
    }
} 

//from 0.8 version underflow/overflow is addressed.

/* 
// pragma solidity 0.8.0;
contract example {
    uint8 public variable;

    function increment() public {
        variable++;

      }

    function decrement() public {  
        variable-- 
    }      

 } */     

 // if the same functionality is needed from 0.8.0 as earlier versions need to specify unchecked
  /* pragma solidity 0.8.0;
 contract example {
     uint8 public variable;

     function increment() public {
        unchecked { variable++; }

     }

     function decrement() public {
         unchecked { variable--; }
     }
 } 
  */
