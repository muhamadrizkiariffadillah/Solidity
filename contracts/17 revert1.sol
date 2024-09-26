// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FirstRevert{
    address public owner;

    // constructor(){
    //     owner = msg.sender;
    // }

    function onlyOwner() public view {
        if(msg.sender != owner){
            revert("Only the owner can call this function");
        } 
    }
}