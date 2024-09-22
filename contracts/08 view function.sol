// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ViewFunctionExample{
    uint public storedValue;


    // view function: adalah fungsi yang digunakan untuk membaca dan tidak bisa memodifikasi.
    function GetValue()public view returns(uint){
        return storedValue;
    }
}