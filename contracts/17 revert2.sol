// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ReverCustom{
    error Unauthorized(address caller);

    address public Owner;

    // constructor(){
    //     Owner = msg.sender;
    // }

    function restrictAction()public view{
        if (msg.sender != Owner){
            revert Unauthorized(msg.sender);
        }
    }
}