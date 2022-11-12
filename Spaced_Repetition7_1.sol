//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract controls {

    event LogLoop(uint);
    event LogBreak(string);
    //ifelse
    function ifElse(uint x,uint y) public pure returns(uint result) {
        if (x > y) {
            result = x - y;
            return result;
        }
        else if (x < y) {
            result = y - x;
            return result;
        }
    }

    //whileLoop
    function whileLoop(uint counter) public  {
        uint i = 0;
        while(i < counter) {
            emit LogLoop(i);
            i = i + 1;
        }
    }

    //dowhileLoop
    function doWhile(uint counter) public {
        uint i = 0;
        do {
            emit LogLoop(i);
            i = i + 1;
        }while ( i < counter);
    }

    //for Loop
    function ForLoop(uint counter) public {
        for (uint i = 0;i < counter ; i++) {
            emit LogLoop(i);
        }
    }

    //breakstatement
    function breakStatement(uint counter) public {
        for (uint i =0;i <counter;i++) {
            if ( i == 4) {
                break;
            }
            emit LogLoop(i);
        }
        emit LogBreak("Out of Loop");
    }

    //continueStatemenet
    function continueStatement(uint counter) public {
        for(uint i = 0;i<counter;i++) {
            if ( i == 4) {
                continue;
            }
            emit LogLoop(i);            
            }

            uint j = 0;
            while (j < counter) {
                j = j +1;
                if (j == 4){
                    continue;
                }
                emit LogLoop(j);
        }        
    }

    //operators ( < > <= >= != ! && ||)
    function Operators(uint x,uint y) public pure returns(uint z) {
        if (x >= 5 && y <= 10) {
            z = y -x;
            return z;
        }

        else if (x <=5 || y >= 10) {
            z = x + y;
            return z;

        }
    }

    bool public flag;
    function getFlag( uint age) public  returns(bool result) {
        if (age > 28) {
            flag = true;
            return flag;
        }

        if (!flag) {
            return flag;
        }
    }
}
