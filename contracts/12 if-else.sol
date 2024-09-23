// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract IfElseExample{
    

    function IfElse(uint input)public pure returns (string memory){

        if (input % 2 == 0) {
            return "Even";
        }else if (input % 3 == 0) {
            return "Ods";
        }else{
            return "oo";
        }
        
    }
}