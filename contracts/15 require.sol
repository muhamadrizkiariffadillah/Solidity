// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract RequireExample{
    uint public state;

    function changeState(uint _state)public  {
        require(_state > 0,"input should be more than 0");
        state = _state;
    }
}