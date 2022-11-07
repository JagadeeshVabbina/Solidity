//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract block_transcts {
    //1. blockhash :- latest 256 blocks only 
    function getBlockhash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //2. block.coinbase:- current block miner's address

    function getMinAddr() public view returns(address payable) {
        return block.coinbase;
    }

    //3. block.difficulty.
    function getblkDifficulty() public view returns(uint) {
        return block.difficulty;
    }

    //4. block.gaslimit
    function getgasLimit() public view returns(uint) {
        return block.gaslimit;
    }

    //5. block.number
    function getblkNum() public view returns(uint) {
        return block.number;
    }

    //6. block.timestamp
    function getblkTimestamp() public view returns(uint) {
        return block.timestamp;
    }

    //7. gasleft()
     function getGasLeft() public view returns(uint) {
         return gasleft();
     }

     //8.now
     /*
     function getblkTimestamp() public view returns(uint) {
         return now;
     } */ //now has been deprecated ,use block.timestampinstead.

     //8. msg.sender (the calling address of the function
     function getSender() public view returns(address) {
         return msg.sender;
     }

     //9. msg.value:- sends the value to any address in wei/ether..
     function setValue() public payable  returns(uint) {
         return msg.value;
     }

     //10. msg.data
     function getMsgData(bytes memory _data) public pure returns(bytes memory) {
          _data = "aj";
         return msg.data;
     }

     //11. msg.sig :- returns the bytes4 data of the msg.data
     function getMsgSig() public pure returns(bytes4) {
         return msg.sig;
     }

     //12. tx.gasprice
     function getTxGasPrice() public view returns(uint) {
         return tx.gasprice;
     }

     //13. tx.origin
     function getTxOrigin() public view returns(address) {
         return tx.origin;
     } 
}

// 2.

contract Block_TransactionalFV2{
    //1. blockhash :- latest 256 blocks info,returns hexa decimal number.
    function getblkHash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //2. block.number :- get the current blockNumber
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //3. block.difficulty
    function getBlkDifficulty() public view returns(uint) {
        return block.difficulty;
    }

    //4. block.gaslimit
    function getgasLimit() public view returns(uint) {
        return block.gaslimit;
    }

    //5. block.timestamp ,since 01Jan1970 UTC //now is deprecated.
    function getBlkTimeStamp() public view returns(uint) {
         return block.timestamp;
    }

    //6. gasleft
    function getGasLeft() public view returns(uint) {
        return gasleft();
    }

    //7. msg.sender , the caller of the function
    function getSender() public view returns(address) {
        return msg.sender;
    }
    
    //8. msg.value 
    function setValue() public payable returns(uint) {
        return msg.value;
    }

    //9. msg.data
    function getMsgdata() public pure returns(bytes memory) {
        return msg.data;
    }

    //10. msg.sig 
    function getMsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //11. tx.origin
    function getTxOrigin() public view returns(address) {
        return tx.origin;
    }

    //12. tx.gasprice
    function getTxGasprice() public view returns(uint) {
        return tx.gasprice;
    }

    //13. block.coinbase
    function getMinrAddr() public view returns(address) {
        return block.coinbase;
    }    
}

// 3. Block and trasaction global functions and variables.
contract block_trasactionalFV3 {
    //1. blockhash :- for the recent 256 blocks
    function getBlkHsh(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //2. block.number :- gets the block number of the current block.
    function getblknum() public view returns(uint) {
        return block.number;
    } 

    //3. block.difiiculty
    function blkdifficulty() public view returns(uint) {
        return block.difficulty;
    }

    //4. block.coinbase:- gets the current block miner address.
    function getMinrAddr() public view returns(address) {
        return block.coinbase;
    }

    //5. block.gaslimit
    function getGasLimit() public view returns(uint) {
        return block.gaslimit;
    }

    //6. block.timestamp since 00:00:00 01Jan1970 UTC,epoach time // now is deprecated.
    function getTimestmp() public view returns(uint) {
        return block.timestamp;
    }

    //7. msg.sender :- get the function caller address.
    function getSender() public view returns(address) {
        return msg.sender;
    }
    //8. msg.value :- set the transaction value
    function setValue() public payable returns(uint) {
        return msg.value;
    }

    //9. msg.data
    function getMsgdata() public pure returns(bytes memory) {
        return msg.data;
    }
    //10. msg.sig
    function getMsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //12. tx.origin
    function getTxOrigin() public view returns(address) {
        return  tx.origin;
    }
    //13. tx.gasprice
    function tx_gasprice() public view returns(uint) {
        return tx.gasprice;
    }

    //14. gasleft
    function getGasleft() public view returns(uint) {
        return gasleft();
    }
}

//4. Block and transactional global functions and variables 
contract Block_Transcs_GFV4 {
    //1. blockhash :- latest 256 blocks
    function getBlockHash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    }

    //2. blocknumber 
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //3. block.difficulty
    function getBlkDiffculty() public view returns(uint) {
        return block.difficulty;
    }

    //4. current block miner address.
    function getblkMirAddr() public view returns(address) {
        return block.coinbase;
    } 

    //5. block.gaslimit
    function getBlkGasLimit() public view returns(uint) {
        return block.gaslimit;
    }

    //6. gasleft()
    function getGasLeft() public view returns(uint) {
        return gasleft();
    }

    //7. block.timestamp
    function getblkTimestamp() public view returns(uint) {
        return block.timestamp;
    }

    //8. msg.sender
    function getSender() public view returns(address) {
        return msg.sender;
    }

    //9. msg.value
    function setValue() public payable returns(uint) {
        return msg.value;
    }

    //10. msg.data
    function getMsgData() public pure returns(bytes memory) {
        return msg.data;
    }

    //11. msg.sig
    function getMsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //12. tx.gaslimit
    function getTxgasprice() public view returns(uint) {
        return tx.gasprice;
    }

    //13. tx.origin
    function getTxOrigin() public view returns(address) {
        return tx.origin;
    }
}

// 5. Block and Transactional global functions and variables.
contract Block_TransactionalGFV5 {
    //1. blockhash :-can get the latest 256 block hases
    function getBlkHash(uint _blocknumber) public view returns(bytes32) {
        return blockhash(_blocknumber);
    } 

    //2. blocknumber :- current block number
    function getBlkNum() public view returns(uint) {
        return block.number;
    }

    //3. block.coinbase:- current block miner's address.
    function getMirAddr() public view returns(address) {
        return block.coinbase;
    }

    //4. block.difficulty
    function blkDiffctly() public view returns(uint) {
        return block.difficulty;
    }

    //5. block.gaslimit
    function getBlkGaslimit() public view returns(uint) {
        return block.gaslimit;
    }

    //6. gasleft
    function Gasleft() public view returns(uint) {
        return gasleft();
    }

    //7. msg.sender
    function getSender() public view returns(address) {
        return msg.sender;
    }

    //8. msg.value
    function setMsgValue() public payable returns(uint) {
        return msg.value;
    }

    //9. msg.data
    function getMsgData() public pure returns(bytes memory) {
        return msg.data;
    }

    //10. msg.sig
    function getMsgSig() public pure returns(bytes4) {
        return msg.sig;
    }

    //12. tx.gasprice
    function getGasPrice() public view returns(uint) {
        return tx.gasprice;
    }

    //13. tx.origin
    function getTxOrigin() public view returns(address) {
        return tx.origin;
    }
}
 
