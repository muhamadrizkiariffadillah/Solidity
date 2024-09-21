// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ExampleGlobalVariable{
    // state variable
    address public lastCaller;
    uint public lastBlockTimeStamp;

    function updateCaller()external {
        
        lastCaller = msg.sender;

        lastBlockTimeStamp = block.timestamp;
    }

    function getBlockNumber() public view returns(uint){
        return block.number;
    }
}