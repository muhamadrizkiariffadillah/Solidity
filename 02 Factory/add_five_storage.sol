// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {SimpleStorage} from "02 Factory/simple_storage.sol";

// inheritance: a child from parrent contract
contract AddFiveStorage is SimpleStorage{

    function store(uint256 _newNumber)public override {
        myFavoriteNumber = _newNumber + 5;
    }
}