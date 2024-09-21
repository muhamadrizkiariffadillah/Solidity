// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateVariable{
    // state variable.
    uint public myNumber;

    function setMyNumber(uint _myNumber)public {
        myNumber = _myNumber;
    }

    function getMyNumber()public view returns(uint){
        return myNumber;
    }

}