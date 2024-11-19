// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract DataLocations{
    uint[] public arr; //定义无符合整形数组全局变量arr

    mapping(uint=> address) myMap; //定义整体到地址的映射表
    struct MyStruct{ //定义一个结构体
        uint foo;

    }
MyStruct s1 = MyStruct({foo:10});
mapping(uint=>MyStruct) myStructs;//定义一个整形到结构体的映射表
//myStructs[1]=s1;
constructor(){

    myStructs[1]=s1;
}

function f(
uint[] memory _arr)external payable returns(uint[] memory){
//空
for(uint i=0;i<=_arr.length;i++){
    _arr[i]=i;
}
return _arr;
}
function g(uint[] memory _arr)public pure returns(uint[]memory){
    //空
    return _arr;
}
function h(uint[]calldata _arr)external {

    //使用calldata数组做事情
}
}