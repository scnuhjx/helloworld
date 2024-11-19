// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ArrayRemove{
uint[] arr;
//通过向左移动来删除指定位置的元素,并把删除的元素返回。
function remove(uint _index)  private returns(uint){
require(_index<arr.length,"Index out of bound!");
uint poped=arr[_index];
for (uint i=_index;i<arr.length-1;i++){
    arr[i]=arr[i+1];
}
arr.pop();
return poped;
}

function test(uint _index)public returns(uint[]memory,uint,uint) {
    arr=[1,2,3,4,5,6];
    uint poped=remove(_index);
    
    return (arr,arr.length,poped);
    }

}