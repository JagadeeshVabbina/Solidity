//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract SS {
    string myName;
    uint myAge;

    constructor (string memory _myName,uint _myAge) {
        myName = _myName;
        myAge = _myAge;

    }

    function setFun(string memory _myName, uint _myAge) public {
        myName = _myName;
        myAge = _myAge;
    }

    function getFun() public view returns(string memory, uint) {
        return (myName , myAge);
    }
} 

//pragma solidity >=0.4.0 <0.6.0; 2
contract Exposure {
    string books = "Ten";
    uint time = 10;

    constructor (string memory _books, uint _time) {
        books = _books;
        time = _time;
    }

    function setExposure(string memory _books, uint _time) public {
        books = _books;
        time = _time;
    }

    function getExposure() public view returns(string memory ,uint) {
        return (books,time);
    }
}

//3
contract basicStructureSC {
    string name;
    uint mxtx_size;

    constructor (string memory _name,uint _mxtx_size) {
        name = _name;
        mxtx_size = _mxtx_size;
    }

    function setStatevars(string memory _name,uint _mxtx_size) public {
        name = _name;
        mxtx_size = _mxtx_size;
    }

    function getStateVars() public view returns(string memory,uint) {
        return (name,mxtx_size);
    }
}

//4
contract StateVarsSetGet {
    string tokenName;
    uint tokenPrice;

    constructor (string memory _tokenName, uint _tokenPrice)  {
        tokenName = _tokenName;
        tokenPrice = _tokenPrice;
    }

    function setTokenVars(string memory _tokenName,uint _tokenPrice) public {
        tokenName = _tokenName;
        tokenPrice = _tokenPrice;
    }

    function getTokenVars() public view returns(string memory, uint) {
        return(tokenName,tokenPrice);
    }
}

//5
contract movieNFT {
    string movieTitle;
    uint movieBudget;

    constructor (string memory _movieTitle, uint _movieBudget) {
        movieTitle = _movieTitle;
        movieBudget = _movieBudget;
    }

    function setmovieInfo(string memory _movieTitle,uint _movieBudget) public {
        movieTitle = _movieTitle;
        movieBudget = _movieBudget;
    }

    function getmovieInfo() public view returns(string memory, uint) {
        return (movieTitle,movieBudget);
    }
}
