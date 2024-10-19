// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Events{

    event Log(address indexed sender, string message);
    event anotherLog();

    function test()public{
        emit Log(msg.sender,"Hello World!");
        emit Log(msg.sender,"Hello");
        emit anotherLog();
    }
}