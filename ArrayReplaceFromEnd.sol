// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ArrayReplaceFromEnd{

    uint256[] public arr;


    function remove(uint index)public{

        require(index<arr.length,'out of boundry');
        arr[index]=arr[arr.length-1];
        arr.pop();
    }

    function test(uint _index)public returns(string memory,uint[]memory){  
        arr=[1,2,3,4];
        remove(_index);
        return ("success",arr);
    
    }

}