// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntroFunction{

    function add(uint x,uint y) external pure returns (uint){
        return x + y;
    }
    function sub(uint x,uint y) external pure returns(uint){
        return x - y;
    }
    function mult(uint x,uint y) external pure returns(uint){
        return x * y;
    }
    function div(uint x,uint y) external pure returns(uint){
        return x / y;
    }
    function mod(uint x,uint y) external pure returns(uint){
        return x % y;
    }
    function exp(uint x,uint y) external pure returns(uint){
        return x ** y;
    }
}