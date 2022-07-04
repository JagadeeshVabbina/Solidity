//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
contract valueTypes {
    //data types - value and reference(store the address of the values)
    bool public b = true;
    uint public u = 123; //compiler will assign the space and No floating points
                         //uint == uint256, 0 to 2**256 -1; 
                         //uint8  0 to 2**8 -1;
                         //uint16 0 to 2**16 -1;
    uint public umin = type(uint).min;
    uint public umax = type(uint).max;
    int public i = -123; //int == int256 -2**255 to 2**255-1;
                         //int8 -2*7 to 2**7-1;  
                         //int16 -2**15 to 2**7-1;
    int public imin = type(int).min;
    int public imax = type(int).max; 
    address public a = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    bytes32 public b32 = keccak256("Arjun Jagadeesh") ;  // || =0x459237c10efc6b528f4a5858a3e0fbbcb27e73157ab58ba45743fb2d57ecd73f;    

                          
}

