// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BasicOwnable{
    // state variable
    address public owner; //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    // new owner 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
    address public zeroAddress; //  0x0000000000000000000000000000000000000000

    // constructor -> sekali deploy -> owner = sender.
    constructor(){
        owner = msg.sender;
    }

    // modifier
    modifier onlyOwner(){
        require(owner == msg.sender,"you're not the owner");
        _;
    }

    // change the owner
    function setNewOwner(address _newOwner)external onlyOwner{
        require(_newOwner != address(0),"the new address is zero that is not allowed");
        owner = _newOwner;
    }
}