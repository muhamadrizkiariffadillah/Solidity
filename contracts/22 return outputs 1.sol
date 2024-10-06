// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BasicOutputs{

    function greet()public pure returns(string memory){
        return "Hello world!";
    }

    function addtional(uint _a,uint _b) public pure returns(uint){
        return _a + _b;
    }
}