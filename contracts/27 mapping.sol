// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Mapping{

    mapping (address=>uint)public myaddress;
    
    function get(address _addr)public view returns (uint){
        return myaddress[_addr];
    }

    function set(address _add,uint value)public {
        myaddress[_add]=value;
    }

}

contract NestedMapping{
    mapping (address=>mapping (uint=>bool)) public nested;
    // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 1 = true
    // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 2 = false
    function get(address _addr,uint value)public view returns(bool){
        return nested[_addr][value];
    }

    function set(address _addr,uint value,bool _b)external {
        nested[_addr][value]= _b;
    }

    function remove(address _addr,uint value)public {
        delete nested[_addr][value];
    }
}