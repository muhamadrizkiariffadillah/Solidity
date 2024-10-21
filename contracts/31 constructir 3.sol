// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract X {
    string public name;
    constructor(string memory _name){
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters.

// Pass the parameters here in the inheritance list.

contract B is X("Input to X"), Y("Input to Y"){}

contract C is X,Y{
    constructor()X("x was called") Y("y was called"){}
}