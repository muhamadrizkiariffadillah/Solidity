// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
    - @title basic storage.
    - @dev a contract that stores an uint during development.
*/

contract BasicStorage{
    uint public storedNumber;

    /**
    - @dev Constructor initializes the contract by storing an initial value.
    - @param _initialNumber the value to be store initially.
    */
    constructor(uint _initialNumber){
        storedNumber = _initialNumber;
    }
}