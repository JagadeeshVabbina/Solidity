//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Operators {
    // > < >= <= == != !

    function Interate1(uint x, uint y) public pure returns(uint result) {
        if (x > y) {
            result = x -y;
            return result;
        }
        else if (x < y ) {
            result = y - x;
            return result;
        }
        else if (x == y) {
            return 0;
        }
            
        }

        function Iterate2(uint x,uint y) public pure returns(uint result) {
            if (x >= 5 && y <= 10) {
                result = x + y;
                return result;
            }

            else if ( x <= 5 || y >= 10) {
                result = y - x;
            }
        }

        bool public flag;

        function Not(uint x) public returns(bool _flag) {
            if ( x != 0) {
                flag = true;
                return flag;
            }
            if (!flag) {
                return flag;
            }
        }

        // +,-, /, %
        function MatsOp(uint x ,uint y,uint z) public pure returns(uint result) {
            // result = (x + y) * z;// (5+3) * 4 = 32
            // result = x + y * z; // 5+3 * 4 = 5 + 12 = 17
            // result = (x + y) / z; // (5 + 3) /4 = 2
            result = (x + y) % z; // (5 + 3) / 4 = 0
    }

}   

