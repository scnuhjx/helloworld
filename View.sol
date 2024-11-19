// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract View{

mapping(address=>uint)public balances;
constructor(){
    balances[msg.sender]=88888888000000;
}
function getBalance()public view returns(uint){

    return balances[msg.sender];
}

function add(uint a,uint b)public pure returns(uint){

return (a+b);

}

uint public x=1;
function addToX(uint y)public view returns(uint){

    return x+y;
}

function addPure(uint _x,uint y)public pure returns(uint){
    return _x+y;
}

}