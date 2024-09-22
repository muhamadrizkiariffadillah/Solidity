// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CounterExample{
    // state variable
    uint public stateVariable;

    function increment()external {
        stateVariable += 1;
    }

    function decrement()external {
        require(stateVariable > 1,"counter can not be negative");
        stateVariable -= 1;
    }
    
    function getValue()external view returns(uint){
        return stateVariable;
    }

}