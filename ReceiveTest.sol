// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ReceiveTest{
    event logBlance(address,uint);
    constructor()payable{}
address payable receiver=payable(address(this));
address payable receiver2=payable(address(0x7E5F4552091A69125d5DfCb7b8C2659029395Bdf));
uint amount = 2 ether;
function transerM()public returns(uint,uint) {
        require(address(this).balance>=amount,"insufficient");
        receiver.transfer(amount);
        emit logBlance(receiver,receiver.balance);
        receiver2.transfer(amount);
        emit logBlance(receiver2, receiver2.balance);//通过事件来记录结果，也可以用来反馈和打印日志。
    return (receiver.balance,receiver2.balance);
}
receive() external payable { }

}