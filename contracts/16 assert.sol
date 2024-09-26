// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract AssretExamplae{
    int public balance;

    function fillBalance(int _balance)public{
        balance += _balance;
        assert(balance >= _balance);
    }
}