//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
///@author Arjun Jagadeesh
/** @title this smart contract is to capture user details.
and to set and get the details
*/
contract bankCrypto {
    //this is a single line comment
    /* This is a multiline
    commenting
    style 
    */

    //state variables
    string userName;
    uint accountNum;

    /* constructor is a function that executes once at the time of 
    deployment and it is used not to hard code the state variables
    */

    constructor (string memory _userName,uint _accountNum) {
        userName = _userName;
        accountNum = _accountNum;
    }

    /** @dev it set the details of the user
    * @param _userName is the account holder name
    * @param _accountNum is the account number of the user
    */

    function setbankUser(string memory _userName,uint _accountNum) public {
        userName = _userName;
        accountNum = _accountNum;
    }

    //it will fetch the user details from the blockchain

    function getUser() public view returns(string memory,uint) {
        return (userName,accountNum);
    }

}

///2. @author ArjunJagadeesh
/// @title commenting in smart contracts

contract commenting {
    //state variables 
    string cryptoName;
    uint cryptoTotalSupply;

    /* constructor will be executed once
    at the time of the deployment and used 
    not to hard code the state variables.
    */
    constructor (string memory _cryptoName,uint _cryptoTotalSupply) {
        cryptoName = _cryptoName;
        cryptoTotalSupply = _cryptoTotalSupply;
        
    }

    /** @dev it sets the state variables
    * @param _cryptoName is the name of the crypto currency
    * @param _cryptoTotalSupply is the maximum of supply of the said crypto currency
    parameter name should be identical to the one that is declared on the function arguments
    it is case sensitive
    */
    function setCrypto(string memory _cryptoName,uint _cryptoTotalSupply) public {
        cryptoName = _cryptoName;
        cryptoTotalSupply = _cryptoTotalSupply;
    }

    //it will fetch the crypto details from the state.

    function getCrypto() public view returns(string memory,uint) {
        return (cryptoName,cryptoTotalSupply);
    }
}

///3 @author Arjun tags.
contract solidityCommenting {
    //state variables
    string creatorName;
    uint year;

    /* constructor is a function that will be executed 
    once at the time of the deployment. it is used 
    not to hard code the state variables.
    */

    constructor (string memory _creatorName, uint _year) {
        creatorName = _creatorName;
        year= _year;
    }

    /** @dev it sets the creator name and the year it is released.
    * @param _creatorName , the creator name of the language
    * @param _year the year it is released.
    */
    function setCreator(string memory _creatorName,uint _year) public {
        creatorName = _creatorName;
        year = _year;
    }

    // the function gets the creator name and year of its release from the state.
    function getCreator() public view returns(string memory,uint) {
        return (creatorName,year);
    }
    
}

///4. @author aj
///@title yield farming contract
contract yearnContract {
    //state variables
    string yieldName;
    uint stake;

    /* constructor is a function that executes once at the time of the 
    deployment. it is used not to 
    hard code the state variables.
    */

    constructor (string memory _yieldName,uint _stake) {
        yieldName = _yieldName;
        stake = _stake;
    }

    /** @dev it sets the _yiled name .
    * @param _yieldName yield farming name
    * @param _stake , the total amount that one willing to stake
    */
    function setYieldFarming(string memory _yieldName,uint _stake) public {
        yieldName = _yieldName;
        stake = _stake;
    }

    // it gets the yieldFarming name and its stake from the blockchain state.

    function getYield() public view returns(string memory ,uint) {
        return(yieldName,stake);
    }
}

///5. @author AJagadeesh
///@title smart contract for a vending machine
contract VendingMachine {
    //state variables
    string softDrink;
    uint softDrinkPrice;

    /* constructor is a function that executes once at the time of 
    deployment. it is used not to hard code the state variables.
    */

    constructor (string memory _softDrink,uint _softDrinkPrice) {
        softDrink = _softDrink;
        softDrinkPrice = _softDrinkPrice;
    }

    /** dev it sets the softdrink name and price
    * @param _softDrink name of the cool drink
    * @param _softDrinkPrice the cost of the drink
    */
    
    function setDrinkNamePrice(string memory _softDrink,uint _softDrinkPrice) public {
        softDrink = _softDrink;
        softDrinkPrice = _softDrinkPrice;
    }

    //it gets the name and price of the softdrink from the blockchain state

    function getDrinkNamePrice() public view returns(string memory,uint) {
        return(softDrink,softDrinkPrice);
    }
}
