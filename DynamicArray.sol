//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract DynamicArray{
uint[] arr=new uint[](3);
uint[] balance=[uint(1),2,3,4,5];
uint[] f=new uint[](3);
function dynamicArray() external returns(uint,uint[]memory,string memory,uint[]memory){
    
    //bytes a=new bytes(3);
    string memory fuck='hello';
    arr[0]=1;
    arr.pop();
    arr.push(5);
    arr.push(6);
    balance.push(6);
    balance.push(7);
    //balance.pop();
    delete balance[5];
    uint t;
   //uint256 l = balance.length;
    t=balance[6];
    balance.pop();
    balance.pop();
    balance.push(t);
    return (balance.length,arr,fuck,f);
}



}