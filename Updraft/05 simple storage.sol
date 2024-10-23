// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleStorage{

    uint256 myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public ToFavoriteNumber;

    function store(uint256  _favoriteNumber)public{
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string calldata _name, uint256 _favoriteNumber)public {
        listOfPeople.push(Person(_favoriteNumber,_name));
        ToFavoriteNumber[_name] = _favoriteNumber;
    }
}