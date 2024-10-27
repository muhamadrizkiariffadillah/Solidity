// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FallBackExample{
    uint public result;

    receive() external payable { result +=1 ;}
    fallback() external payable { result += 5;}
}