// SPDX-License-Identifier: MIT
//@author：hjx
//@notice:这是用来学习存储位置的例子。
pragma solidity ^0.8.4;
contract Storage{
    uint public number;//storage in storage
    function setNumber(uint _number)public {
        number = _number;
    }

    function getNumber()public view returns(uint){


        return number ;
    }
    //对于复杂数据类型数组，默认是放在storage里面的，所以作为函数参数要显式指定放在memory里面
    function doSomething(uint[] memory _value)public pure returns(uint,uint[]memory){
        //uint[] calldata arr;
        
        uint sum=0; //默认是memory类型
        for(uint i=0;i<_value.length;i++){
            sum+=_value[i];
            _value[i]+=1;

        }
        return (sum,_value);
    }


}