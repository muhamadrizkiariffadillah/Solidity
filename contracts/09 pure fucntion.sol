// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract PureFunction{
    // pure function tidak dapat membaca atau mengubah state variable
    function add(uint x, uint y)public pure returns(uint){
        return x + y;
    }
}