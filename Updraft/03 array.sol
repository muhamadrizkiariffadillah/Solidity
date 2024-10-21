// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DynamicArray{
    uint256[] myFavoriteNumbers;

    function input(uint _favoriteNumber) public {
        myFavoriteNumbers.push(_favoriteNumber);
    }

    function get()public view returns(uint256[] memory){
        return myFavoriteNumbers;
    }
}

contract StaticArray{
    uint256[5] maxFiveNumbers;
    uint count = 0;

    function input(uint256 _number)public{
        maxFiveNumbers[count] = _number;
        count++;
    }

    function get()public view returns(uint256[5] memory){
        return maxFiveNumbers;
    }
}