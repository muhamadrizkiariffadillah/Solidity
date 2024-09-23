// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract WhileExample{
    

    function while_example(uint n)public pure returns(uint result){
        result = 1;

        while(n>1) {
            result += n;
            n--;
        }
    }
}