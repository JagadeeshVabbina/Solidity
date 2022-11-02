 //SPDX-License-Identifier:MIT
 pragma solidity ^0.8.17;
 /** @author ArjunJagadeesh
 * @title variables in Solidity
 */
 contract solVars {
     /* state variables are stored in blockchain ledger.
     state variables cost Gas
     */
     int public stateVar1;
     string public stateVar2;

     /*local variables are declared within a function,they are stored 
     in temporary memory. local variables do not cost Gas. Local vars scope is within the declared function only */

     function setLocalVars() public  {
         int _localVar1 =-28;
         string memory _localVar2 = "SmartContract Developer";
         stateVar1 = _localVar1;
         stateVar2 = _localVar2;

     }
 }

 ///2 @author AJ
 contract stateLocalVars {
     /* state variables are declared at contract level
     state variable are stored permanently in blockchain ledger.
     state variables cost Gas */

     uint public solState1;
     address public solState2;

     /** local variables are declared within function.Local variables scope is within the function only.
     local variables are stored in temporary memory. local variables do not cost Gas */

     function setStateLocal() public {
         uint locVar1= 28;
         address locVar2= 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
         solState1 = locVar1;
         solState2 = locVar2;
     }  
 }

 /** 3. @author aj
 * @title variables in solidity programming language */
 contract SolidityVars{
     /* state variables are defined at contract level and they are stored 
     permanently in blockchain ledger and state variables cost Gas. */
     bool public  StateVar1;
     bytes32 public StateVar2;

     /* local variables are stored in temporary memory. the scope of the local variable is within the 
     declared function only.local variables do not cost Gas. */

     function setState_Local() public {
         bool LocalVar1= true;
         bytes32 LocalVar2 = "SmartContractDeveloper";
         StateVar1= LocalVar1;
         StateVar2 = LocalVar2;
        
     }
 }

 /** 4. @author smartContract Auditor
 * @title Variables in solidity programming language */
 contract Location {
     /** state variables are stored permanently in blockchain ledger.
     state variables cost Gas.*/
     uint8 public varCap8;
     int16 public varCap16;

     /* local variables are declared within functions and their scope is within the said function only.
     local variables are stored in temporary memory. */
     function setVars() public {
         uint8 LocCap8 = 28;
         int16 LocCap16 = -28;
         varCap8 = LocCap8;
         varCap16 = LocCap16;
     }
 }

 /** @author smartContracts Expert
 * @title types of variables in solidity. */
 contract SLvars {
     /* state variable are declared at contract level and state variables are stored
     permanently in blockchain ledger. state variables cost Gas. */
     string public strVar;
     bytes32 public bytesVar;

     /* Local variables are declared at function level and their scope is within that function only.
     local variables are stored in temporary memory. local variables do not cost Gas. */
     function setLoc_State() public {
         string memory localStr = "ArjunJagadeesh";
         bytes32 localBytes = "ArjunJagadeesh";
         strVar = localStr;
         bytesVar = localBytes;
     }
 }
 
