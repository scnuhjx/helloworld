// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract MsgData{


    event Log(bytes data);

    function Add(uint a,uint b)public returns(uint,bytes4,bytes4){

        emit Log(msg.data);
        return (a+b,bytes4(keccak256(bytes("Add(uint256,uint256)"))),bytes4(keccak256(bytes("Add(uint,uint)"))));//就就是加不加256的区别。正常是一定加256的。
    }
}