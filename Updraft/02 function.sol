// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleFunction{

    uint256 myNumber;
    // if we use public in our variables as a default it will store a get function.
    function set(uint256 _myNumber)public {
        myNumber = _myNumber;
    }

    function get()public view returns (uint256){
        return myNumber;
    }
}