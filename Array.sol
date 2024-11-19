// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Array{
    //初始化数组的几种方式
    uint[] arr;
    uint[] arr2=[1,2,3];
    uint[4] myFixedSizeArr=[1,2,3,4];
    function get(uint i) public view returns(uint){
        return arr[i];


    }
    function getArr(string memory _i)public view returns(uint[]memory){
        if (keccak256(bytes(_i))==keccak256(bytes('arr')))
        {return arr;}
        else if(keccak256(bytes(_i))==keccak256(bytes('arr2'))){
            return arr2;

        }
        uint256[] memory rs=new uint[](2);
        rs[0]=888;
        rs[1]=666;
        return rs;
    }

    function push(uint value)public{
        arr.push(value);


    }
    //删除数组最后一个元素
    function pop( )public {
        arr.pop();
    }
    function getLength()public view returns(uint){
        return arr.length;
    }

    function getLengthArr2()public view returns(uint){

        return arr2.length;
    }

    //这个delete并不是删除元素，而为把元素置为默认值，不改变数组和长度
    function remove(uint index)public {


        delete arr[index];
    }
    function  examples()external pure returns(uint[] memory){
        //uint[5] memory a;
        uint[] memory b=new uint[](5);
        for (uint i = 0;i<b.length ;) {
            b[i]=100;
            ++i;
        }
        return b;

    }


}