// SPDX-License-Identifier: MIT
//三种错误抛出
// require(条件真继续,"条件假时的报错内容")
//revert("直接异常，报错内容")，通常加上if条件就和require一样了
//assert(条件真继续，条件假报错)，早期的报错，不建议继续用,因为报错看不出原因。
//error自定义错误 error Error1(参数1，参数2) 用revert关键字来触发。
pragma solidity ^0.8.10;
error NotEnoughFunds(uint requested,uint available);

contract TestError{
    mapping(address=>uint) balances;//内部账本，映射；

    //构造函数
    constructor(){

        balances[msg.sender]=1;
    }

    function transfer(address to,uint amount)public returns(uint,uint){

        uint balance=balances[msg.sender];//获取发送者的账户余额。
        assert(balance>=amount);
        if(balance<amount){

            revert NotEnoughFunds(amount,balance);
        }
    balances[msg.sender]-=amount;
    balances[to]+=amount;
    return (balances[msg.sender],balances[to]);
    }

}