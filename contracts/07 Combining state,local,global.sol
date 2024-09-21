// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CombiningAllTogether{
    // state variable
    uint public TotalSum;

    // state variable to store global variable
    address public lastCaller;

    function sum(uint x,uint y)external {
        // local variable
        uint total = x + y;
        // change state value by local value.
        TotalSum = total;

        // store the caller's address/
        lastCaller = msg.sender;
    }




}