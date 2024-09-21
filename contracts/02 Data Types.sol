// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

contract DataTypes{
    // text data type : string
    string public myName = "Muhamad Rizki Arif Fadillah";
    // number data types: int,uint
    int public  canbeMinus = -50;
    uint public cannotBeMinus = 50;
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // default address
    address public defaultAddress;
    // bytes data type
    bytes32 public myBytes = 0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa;
    
}