// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Callee{

    uint public value;

    function setValue(uint _value)external payable returns(uint){
        value= _value;
        return value;


    }


    receive() external payable { }//表明有接收ETH的能力。参数为空，外部可见，可接收支付。
}