// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract JiCheng{
uint public data;
constructor(uint _data){

    data=_data;
}
function getSalary()public pure virtual returns(uint){
    return 1000;
}
}
contract Child is JiCheng(1){ //直接传值
function getData()public view returns(uint){

    return data;
}
function getSalary()public pure override returns(uint){

    return 3000;
}


}
contract Child2 is JiCheng{ // 传入参数

constructor(uint _data) JiCheng( _data) {

}

function getSalary()public pure override returns(uint){


    return 4000;
}
function getJiChengSalaryBySuper()public pure returns(uint){


    return super.getSalary();
}

function getJiChengSalaryByName()public pure returns(uint){
    return JiCheng.getSalary();

}

}