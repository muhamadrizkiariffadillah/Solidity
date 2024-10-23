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

contract ArrayOfStruct{

    struct Students{
        uint256 Id;
        string FullName;
        address Wallet;
    }

    mapping(string=>address) public getAddress;

    Students[] public ListOfStudents;

    function input(uint256 _id,string calldata _fullName,address _wallet)public {
        ListOfStudents.push(Students({
            Id: _id,
            FullName: _fullName,
            Wallet: _wallet
        }));
        getAddress[_fullName] = _wallet;
    }
}