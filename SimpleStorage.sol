// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract SimpleStorage{

    uint public num=1000;
    function set(uint _num) public{
        num=_num;
    }

    function get()public view returns(uint){
        return num;
    }
}