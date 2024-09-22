// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ConstantExample{
    uint public constant PII = 3141592653589793;

    address public constant OWNER_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstants() external pure returns(uint,address){
        return (PII,OWNER_ADDRESS);
    }
}