//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract constantImmutable {
    uint constant num = 28; //should be iniated while declaring. but cant be changed thoughout contract.
    uint immutable Id; //can be initialized after declaration but cant be chnaged throughout contract

    constructor() {
        Id = 30;
    }
}

