//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract enumContract {

    enum claimStatus { Approved,Rejected} 

    claimStatus public status;

    //function to set the logic based on the clainAmount

    function setClaim(uint _claimAmount) public {
        if (_claimAmount > 100) {
            status = claimStatus.Rejected;
        }

        else if (_claimAmount < 100) {
            status = claimStatus.Approved;
        }
    }

    //to get the status of the claim

    function getStatus() public view returns(claimStatus) {
        return status;
    }

}

// 2.

contract enumType {
    enum claimStatus1 { Approved,Rejected}

    claimStatus1 public Status1;

    //function to set the claim logic.

    function setClaimLogic(uint _claimAmount1) public {
        if (_claimAmount1 > 1000) {
            Status1 = claimStatus1.Rejected;
        }

        else if (_claimAmount1 < 1000) {
            Status1 = claimStatus1.Approved;
        }

    }

    //to get the claim status.

    function getStatus() public view returns(claimStatus1) {
        return Status1;
    }
}

// 3.

contract enumUseType {
    enum ClaimStatus2 { Approved,Rejected}

    ClaimStatus2 public Status2;

    // setting the logic for claim

    function setClaim(uint _ClaimAmount2) public {
        if (_ClaimAmount2 > 10000) {
            Status2 = ClaimStatus2.Rejected;
        }

        else if (_ClaimAmount2 < 10000) {
            Status2 = ClaimStatus2.Approved;
        }
    }

    //get the status details.

    function getStatus() public view returns(ClaimStatus2) {
        return Status2;
    }
}

// 4.

contract myEnum {
    enum ClaimStatus3 { Approved, Rejected} 
    ClaimStatus3 public Status3;

    function setLogicClaim(uint _ClaimAmount3) public {
        if (_ClaimAmount3 > 100) {
            Status3 = ClaimStatus3.Rejected;
        }

        else if(_ClaimAmount3 < 100) {
            Status3 = ClaimStatus3.Approved;
        }
    }

    function getStatu3() public view returns(ClaimStatus3) {
        return Status3;
    }
}

// 5.

contract Logicenum {
    enum ClaimStatus5 {Approved,Rejected} 
    ClaimStatus5 public Status5;

    //set the logic for the claim

    function setLogic(uint _ClaimAmount5) public {
        if (_ClaimAmount5 > 1000) {
            Status5 = ClaimStatus5.Rejected;
        }

        else if(_ClaimAmount5 < 1000) {
            Status5 = ClaimStatus5.Approved;
        }
    }

    //get the status of the claim

    function getStatus() public view returns(ClaimStatus5) {
        return Status5;
    }
}
