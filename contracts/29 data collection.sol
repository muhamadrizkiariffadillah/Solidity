// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DataCollection{
    // state variable
    uint[] public arr;

    mapping(uint=>address) public map;

    struct MyStruct{
        uint foo;
    }

    mapping(uint=>MyStruct) public myStructs;

    function f() public {

        _f(arr, map, myStructs[1]);

        MyStruct storage mystruct = myStructs[1];

        mystruct.foo = 123;

        MyStruct memory myMemStruct = MyStruct(999);

    }

    function _f(
        uint[] storage _arr,
        mapping(uint=>address) storage _map,
        MyStruct storage _myStruct
    )internal {
        _arr.push(789);
        _map[1] = msg.sender;
        _myStruct.foo = 999;
    }

    function g(uint[] memory _arr)public pure returns(uint[] memory){
        for (uint x=0; x<_arr.length; x++) 
        {
            _arr[x] =  _arr[x] * 2;
        }
        return _arr;
    }
    
    function h(uint[] calldata _arr)external pure returns(uint){
        uint sum;
        for (uint x = 0; x < _arr.length; x++) 
        {
            sum += _arr[x];
        }
        return sum;
    }
}