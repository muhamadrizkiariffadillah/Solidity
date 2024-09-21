// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract LocalVariable{
    // state variable
    uint public state;

    function calculateSum(uint x,uint y)public pure returns(uint){
        uint localVariable = x + y; // local variables
        return localVariable; // return local variable
    }

    function updateState()external {
        uint newStateValue = 500; //local variable
        state = newStateValue; // state variable value is changed by local variable.
    }

}