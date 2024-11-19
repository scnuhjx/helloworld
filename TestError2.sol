// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract TestError2{
    event logVar(uint,string,uint,address);
    uint public balance=8;
    function test() external {
        require(balance > 5,'balance must greater 5');
        emit logVar(balance, "test", 6, address(this));
    }   
}