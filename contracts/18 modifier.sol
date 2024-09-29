// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleOwnerModifier{
    // state variable x00000
    address public owner;
    // default address 0x0000000000000000000000000000000000000000
    // sender: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    constructor(){
        owner = msg.sender;
    }

    modifier OnlyOwner(){
        require(msg.sender == owner,"You are not the owner!");
        _;
    }

    function ChangeOwner(address newOwner) public OnlyOwner{
        owner = newOwner;
    }
}