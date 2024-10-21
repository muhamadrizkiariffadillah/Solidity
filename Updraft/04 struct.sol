// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleStruct{
    struct Person{
        uint256 myFavoriteNumber;
        string FullName;
        uint16 Age;
        address myWallet;
    }

    Person student;

    function set(uint256 _FavoriteNumber, string memory _FullName, uint16 _Age, address _wallet)public {
        student = Person({
            myFavoriteNumber: _FavoriteNumber,
            FullName: _FullName,
            Age: _Age,
            myWallet: _wallet
        });
    }
    
    function get()public view returns(Person memory){
        return student;
    }
}