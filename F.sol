//SPDX-License-Identifier:GPL

pragma solidity ^0.8.0;
contract F{
    address owner;
    uint[] public balance = [uint(1), 2, 3];
    
    mapping(address=>uint) private accounts;
    constructor() {
    accounts[msg.sender]=100;
    owner=msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
}
function getOwnerBlance() public view onlyOwner returns(uint){

    return accounts[owner];
}
function getOwner()  external view onlyOwner returns(address){
    return owner;

}
function sendCoin(uint _nums) public returns(uint,uint256,uint,uint,address,uint){

    accounts[msg.sender]+=_nums;
    return (accounts[owner],block.number,block.timestamp,tx.gasprice,tx.origin,gasleft());

}
function sayHello() external   returns(uint){
   balance[4]=8;
    return (balance.length);
}

function getBoll() external pure returns(bool){
    bool  a;
    a=false;
    return a;
}
}