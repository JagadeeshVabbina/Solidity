//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
contract structExample {
    struct year {
        uint first;
        uint second;
        uint third;
        string forth;
    }

    year public jobyear ;
    year[] public jobyears;

    function setStruct(uint _first,uint _second,uint _third,string memory _forth) public {
        jobyear.first= _first;
        jobyear.second = _second;
        jobyear.third = _third;
        jobyear.forth = _forth;
    }

    function getStruct() public view returns(uint,uint,uint,string memory) {
        return (jobyear.first,jobyear.second,jobyear.third,jobyear.forth);
    }

    function setStructJobyears(uint _first,uint _second,uint _third,string memory _forth) public {
        year memory tempstruct = year({
            first: _first,
            second: _second,
            third: _third,
            forth: _forth
        });
        jobyears.push(tempstruct);
    }

}
