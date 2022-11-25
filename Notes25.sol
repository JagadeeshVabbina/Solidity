//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract Conscientiousness {
    /* Vending Machine:- an automated logic
       if (coin > price) {
       dispenseItem;
       return (coin - price);
       }
       else {
           return "insufficient funds";
           }

      Vending Machines:- Trust based, centralised and Evironment is not in control.

      Public blockchain address this issue with smart contracts...Transparent 

      EVM Based:- Ethereum,Binance smart chain,Polygon ,tron and ETC(Ethereum classic).

      Ethreum is the dominanat one:- market Capital,Developer activity,community and Economic activity.

      DeFi:-settlemet Layer:- Ethereum blockchain
            Asset Layer:- Ether(Native protocol asset),ERC-20(Fungible tokens) and ERC-721(Non-Fungiible token).
            protocol layer:- Exchanges,Lending,derivatives and asser management
            Application Layer:- Dentralised Applications
            Aggregator Layer:- aggregation interface and UI

     Interdisciplinary Approach:-    ComputerScience && Economics && Cryptography

     Bitcoin whitepaper:- 2008 bitcoin:- a peer to peer Eletronic cash system.

     Transaction capacity :- Anyone can initiate transactions.
     Transaction legitimacy:- authentication & Integrity is cryptographically secured.
     Transaction consensus:- PoA,PoW,PoS.

     Permissionless,censorship-resistance,No special privileges.

     EOA to EOA--> Value transaction
     EOA to CA --> Smart contract interaction
     EOA to 0x --> Smart contract Deployment

     private/public cryptography(Assymetric):- one way function,No collison.

     EOA:- 20 byte address, Hexadecimal endoing,
          private key.
          (address,balance,nonce(# of transactions))

    EIP-55: Mixed-case checksum address encoding     >=7 then Capital(upper case) or lower case

     CA(contract account):- governed by the rules of the code not by private code
                             address,balance,nonce(# of accounts created),contract code and contract storage.
  new contract address = sha3.256(address_sender,nonce).

  Ethereum Transactions:- 
  Transactions can modify :- Balances of accounts and contract storage
  Transactions optionally contain:- ether and data.

  Transactions contain:-
  recipient address,nonce
  signature:- consisting of variables V,R and S.
  GasLimit:- the maximum number of transaction execution steps
  gasprice:- the fee sender iw willing to pay per execution.



  Gas fees:- 
  1936 alan turing, " a machine(turing) can never tell if a script will halt or run forever before execution"
  opcodes -- gas units
  EIP-1559 :- 05 Aug'2021 London hardfork.
            deals with inefficiences of first auction.

            Dynamic base fee and burned by the network.
            priority fee
            Max fee    
    
    */
}
