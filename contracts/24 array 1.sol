// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract BasicArray{
    uint[5] fixedNumbers;

    constructor(){
        fixedNumbers[0] = 10;
        fixedNumbers[1] = 20;
        fixedNumbers[2] = 30;
        fixedNumbers[3] = 40;
        fixedNumbers[4] = 50;
    }

    function getArray(uint element) external view returns(uint) {
        require(element < fixedNumbers.length,"index is out of range");
        return fixedNumbers[element];
    }

    uint[] dynamicArray;

    function push(uint value) external {
        dynamicArray.push(value);
    }

    function pop()external {
        dynamicArray.pop();
    }

    function deleteOnIndex(uint index)external {
        delete dynamicArray[index];
    }

    function getLength()public view returns (uint){
        return dynamicArray.length;
    }

    function getArr() external view returns(uint[] memory){
        return dynamicArray;
    }

    function test()external {
        dynamicArray = [1,2,3,4];

        assert(dynamicArray.length == 4);
        assert(dynamicArray[0] ==1 );
        assert(dynamicArray[3] == 4);
    }
}