// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract StructOutput{

    struct User{
        string name;
        uint age;
        address wallet;
    }

    mapping(address=>User) public users;

    function setUser(string memory _name, uint _age)public{
        users[msg.sender]= User({
            name: _name,
            age: _age,
            wallet: msg.sender
        });
    }

    function getUser(address _userAddres) public view returns(User memory user){
        return users[_userAddres];
    }
}