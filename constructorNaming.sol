/* pragma solidity 0.4.21;
contract const {
    uint public age;
   
   //constructor >=0.4.21 , contract name is same as constructor name
   function const() public {
       age = 28;
   }

} */

/*
pragma solidity 0.4.22;
contract constr {
    uint public age;

    //constructor >0.4.22 <0.5.0 , contract name or keyword constructor can be used.
   function constr() public {
       age = 28;
   }
}  */

pragma solidity 0.5.1;
contract myContract {
    uint public age;
   // from >= 0.5.0 constructor keyword works only.
    constructor() public  {
        age = 28;
    }
}





