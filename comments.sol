//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;
contract Comment {
    uint Arjun;
    //This is aa first comment
    ///This is a second comment
    /*This is for multiple line comments
    we can do like this */
    function getThings() public view returns(uint) {
        /** this also for 
    @Author Arjun Jagadeesh
    @param getThings
    */
        return Arjun;
    }
}
