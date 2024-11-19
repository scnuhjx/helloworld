// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract SendETH{
    event showAddr_Balance(address,uint);
constructor()payable{}//用构造函数payable就表示部署时可以存入以太

function transfer(address payable receiver,uint amount)external payable returns(bool){
receiver.transfer(amount);
emit showAddr_Balance(receiver,receiver.balance);
return true;

}
function send(address payable receiver , uint256 amount ) external payable returns(bool){
    bool success=receiver.send(amount);
   
    emit showAddr_Balance(receiver,receiver.balance);
 return success;
}

function call(address payable receiver,uint amount)external payable returns(bool){

    (bool success,)=receiver.call{value:amount}("");

    emit showAddr_Balance(receiver,receiver.balance);
    
    return success;
}
receive() external payable { }

}