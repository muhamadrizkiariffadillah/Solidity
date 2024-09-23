// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ForLoop{

    function sumUpTo(uint n) public pure returns(uint sum){
        for (uint a = 1; a <= n; a++) 
        {
            sum += a;
        }
    }
}