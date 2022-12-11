//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract SolStructs {
    struct Student {
        string name;
        uint roll_number;
        bool qualified;
    }

    Student[] public students;

    function setStudents1(string calldata _name,uint _roll_number,bool _qualified) public {
        students.push(Student(_name,_roll_number,_qualified));

    }

    function setStudents2(string calldata _name,uint _roll_number,bool _qualified) public {
        students.push(Student({name:_name,roll_number:_roll_number,qualified:_qualified}));

    }

    function setStudents3(string calldata _name,uint _roll_number,bool _qualified) public {
        Student memory student;
        student.name = _name;
        student.roll_number = _roll_number;
        student.qualified = _qualified;
        students.push(student);
    }
}
