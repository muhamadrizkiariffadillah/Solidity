// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "02 Factory/simple_storage.sol";
// import {SimpleStorage,etc} form "02 Factory/simple_storage.sol"; for specific import a contract

contract StorageFactory{
    // SimpleStorage public simpleStorage;

    // function createSimpleStorageContract() public {
    //     simpleStorage = new SimpleStorage();
    // }
    SimpleStorage[] public ListOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        ListOfSimpleStorageContracts.push(newSimpleStorage);
    }

    function sfStorage(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber)public{
        // Address
        // ABI : Application Binary Interface.
        SimpleStorage mySimpleStorage = ListOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex)public view returns(uint256){
        SimpleStorage mySimpleStorage = ListOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}