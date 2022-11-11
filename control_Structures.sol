//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract controls {
    /* if - else
       while loop
       do while loop
       for loop
       continue statement
       break statement 
       return statement */

     // if - else
     function IfElse(uint x,uint y) public pure returns(uint result) {
         if (x > y) {
             result = x - y;
             return result;
         }
         else if(y > x) {  // can define multiple
             result = y - x;
             return result;
         }
         else {
             return 0;
         }
     }  

     event LoopLog(uint);
     event BreakLog(string);

     //while loop (initialization(start),conditionChecking(Stop),Increment/Decrement)
     function whileLoop(uint counter) public  {
         uint i = 0;
         while (i < counter) {  // First condition checking then execution.
             emit LoopLog(i);
             i = i +1;
         }
     }

     // do while (initialization,Increment/decrement, conditionChecking)
     function doWhile(uint counter) public {
         uint i = 0;
         do {
             emit LoopLog(i);
             i = i +1;
         } while(i < counter);
     }

     // for loop 
     function forLoop(uint counter) public {
         for (uint i=0;i<counter;i++) {
             emit LoopLog(i);
         }
     }

     //break statement
     function  breakStatement(uint counter) public {
         for(uint i =0;i < counter;i++){
             if(i==4) {
                 break;
             }
             emit LoopLog(i);
         }
         emit BreakLog("out of Loop");
     }

     function continueStatement(uint counter) public {
         for(uint i=0;i < counter;i++) { // in for continue reached to update expression(Increment/decrement)
             if(i == 4) {
                 continue;
             }
             emit LoopLog(i);
         }

         uint j = 0;
         while(j < counter) { // in while continue reaches to condition checking.
             j=j+1;
             if (j == 4) {
                 continue;
             }
             emit LoopLog(j);
             // return; with return function will not be executed.
         }
     }
}


// 2.
contract controls2 {
    //if-else

    event LogLoop(uint);
    event BreakLog(string);
    function ifelse(uint x,uint y) public pure returns(uint result) {
        if (x > y) {
            result = x - y;
            return result;
        }

        else if( x < y) {
            result = y - x;
            return result;
        }
        else {
            return 0;
        }
    }

    //while (initialization,conditionChecking,increment/decrement)
    function whileLoop(uint counter) public  {
        uint i = 0;
        while(i < counter){
            emit LogLoop(i);
            i = i + 1;            
        }
    }

    //dowhile
    function dowhile(uint counter) public {
        uint i = 0;
        do {
            emit LogLoop(i);
            i = i +1;
        }while(i < counter);
    }

    //for Loop
    function forLoop(uint counter) public  {
        for(uint i =0;i < counter;i++) {
            emit LogLoop(i);
        }
    }

    //breakstatement
    function breakStatment(uint counter) public {
        for(uint i = 0;i < counter;i++) {
            if (i == 4){
                break;
            }
            emit LogLoop(i);
        }
        emit BreakLog("Out of Loop");
    }

    //continue Statement
    function continueStatement(uint counter) public {
        for(uint i = 0;i < counter;i++) { //continue check to update expression
            if(i == 4)
            continue;
            emit LogLoop(i);
        }

        uint j = 0;
        while(j < counter) {  //continue check to condition checker.
        j = j + 1;
        if (j == 4) {
            continue;
        }
        emit LogLoop(j);
    }
    }    
}

// 3. 
contract controls3 {
    event LogLoop(uint);
    event breakLog(string);

    //if -else
    function ifelse(uint x,uint y) public pure returns(uint result) {
        if (x > y) {
            result = x - y;
            return result;
        }
        else if(x < y) {
            result = y - x ;
            return result;
        }
        else {
            return 0;
        }
    }

    //while Loop
    function whileLoop(uint counter) public  {
        uint i = 0;
        while ( i < counter) {
            emit LogLoop(i);
            i = i + 1;
        }
    }
    function dowhile(uint counter) public {
        uint i = 0;
        do{
            (i = i +1);
        emit LogLoop(i) ;       
    }while(i < counter);
}

  //for Loop
  function forLoop(uint counter) public {
      for(uint i = 0;i<counter;i++) {
          emit LogLoop(i);
      }
  }

  //breakstatement
[O  function breakstatement(uint counter) public {
      for (uint i;i<counter;i++) {
          if (i == 4) {
              break;
          }
          emit LogLoop(i);
      }
      emit breakLog("Out of Loop");
  }

  //continue
  function continueStatement(uint counter) public {
      for(uint i = 0;i<counter;i++) {
          if ( i == 4) {
              continue;
          }
          emit LogLoop(i);
      }
  

  uint j =0;
  while(j < counter) {
      j = j + 1;
      if (j == 4) {
          continue;
      }
      emit LogLoop(j);
  }
}
}

// 4.
contract controls4 {
    event LogLoop(uint);
    event breakLog(string);
    //ifelse
    function ifelse(uint x,uint y) public pure returns(uint result) {
        if (x > y) {
            result = x - y;
            return result;
        }

        else if (x < y) {
            result = y - x;
        }

        else {
            return 0;
        }
    }   

    //while
    function whileLoop(uint counter) public  {
        uint i = 0;
        while(i < counter) {
            emit LogLoop(i);
            i = i + 1;
        }
    } 

    //dowhile
    function dowhile(uint counter) public {
        uint i = 0;
        do {
            i = i +1;
            emit LogLoop(i);
        } while(i < counter);
    }

    //for
    function forLoop(uint counter) public {
        for (uint i = 0;i < counter;i++) {
            emit LogLoop(i);
        }
    }

    //breakstatement
    function breakStatement(uint counter) public {
        for (uint i = 0; i < counter;i++) {
            if (i == 4) {
                break;
            }
            emit LogLoop(i);
        }
        emit breakLog("out of loop");
    }

    //continue statement
    function continueStatement(uint counter) public {
        for(uint i = 0;i<counter;i++) {
            if ( i == 4) {
                continue;
            }
            emit LogLoop(i);
        }

        uint j = 0;
        while(j < counter) {
            j = j +1;
            if (j == 4) {
                continue;
            }
            emit LogLoop(j);
        }
    }
}

// 5.
contract controls5 {
    event LogLoop(uint);
    event breakLog(string);

    //ifelse
    function ifelse(uint x,uint y) public pure returns(uint result) {
        if(x > y) {
            result = x - y;
            return result;
        }

        else if(x < y) {
            result = y -x;
            return result;
        }

        else {
            return 0;
        }
    }

    //while Loop
    function whileLoop(uint counter) public  {
       uint i = 0;
        while ( i < counter) {
            emit LogLoop(i);
            i = i + 1;            
        }
    }

    //dowhile Loop
    function doWhile(uint counter) public {
        uint i = 0;
        do {
            emit LogLoop(i);
            i = i +1;
        }while ( i < counter);
    }

    //for loop
    function forLoop(uint counter) public {
        for (uint i = 0;i<counter ; i ++) {
            emit LogLoop(i);
        }
    }

    //breakStatement
    function breakStatement(uint counter) public {
        for (uint i = 0 ; i < counter;i++) {
            if (i == 4) {
                break;
            }
            emit LogLoop(i);
        }
        emit breakLog("Out of Loop");
    }

    //continueStatement
    function continueStatement(uint counter) public {
        for (uint i =0;i<counter;i++) {
            if ( i == 4) {
                continue;
            }
            emit LogLoop(i);
        }

        uint j = 0;
        while(j < counter) {
            j = j +1;
            if ( j == 4) {
                continue;
            }
            emit LogLoop(j);

        }
    }

}


