//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract DappSol {
    mapping(uint => string) public Names;

    constructor () {
        Names[1] = "Project1";
        Names[2] = "Project2";
        Names[3] = "Project3";
    }

    struct Book {
        string name;
        uint year;
    }

    mapping (uint => Book) public books;

    //setter
    function setbooks(uint _id,string memory _name,uint _year) public {
        books[_id] = Book(_name,_year);

    }
}

// 2.

contract myMapping1 {
    mapping (uint => string) public Names;

    constructor () {
        Names[1] = "CompanyA";
        Names[2] = "CompanyB";
        Names[3] = "CompanyC";
    }

    struct book1 {
        string title1;
        uint year1;
    }

    mapping(uint => book1) public books1;

    //set books 
    function setbooks1(uint _id,string memory _title1,uint _year1) public {
        books1[_id] = book1(_title1,_year1);

    }
}

// 3.

contract myMapping3 {
    mapping(uint => string) public Names3;

    constructor() {
        Names3[1] = "amount1";
        Names3[2] = "amount2";
        Names3[3] = "amount3";
    }

    struct book {
        string name;
        uint year;        
    }

    mapping(uint => book) public books;
    
    //set books
    function setbooks(uint _id,string memory _name,uint _year) public {
        books[_id] = book(_name,_year);
    }
}

// 4.

contract myMapping4 {
    mapping(uint => string) public Names;

    constructor() {
        Names[1] = "Iteration100";
        Names[2] = "Iteration101";
        Names[3] = "Iteration102";
    }

    struct book {
        string name;
        uint year;
    }

    mapping(uint => book) public books;

    //set books
    function setBooks(uint _id,string memory _name,uint _year) public {
        books[_id] = book(_name,_year);

    }
}

// 5. 

contract myMapping5 {
    mapping(uint => string) public Names;

    constructor() {
        Names[1] = "Endeavour1";
        Names[2] = "Endeavour2";
        Names[3] = "Endeavour3";
    }

    struct book {
        string name;
        uint year;
    }

    mapping(uint => book) public books;

    //set books
    function setBooks(uint _id,string memory _name,uint _year) public {
        books[_id] = book(_name,_year);
    }
}
