// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Variables{

string public text="Hello";
uint public num=123;

function dSomething()public view returns(address){
    uint i=456;
    uint   timestamp=block.timestamp;
    address sender=msg.sender;
    return sender;
}
}