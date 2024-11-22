// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Counter{

    uint public count=10;
    function inc(uint num)public returns(address){
        count+=num;
        return msg.sender;
    }
}
contract Caller_by_call{

   

    uint public count=20;
    function callByAddr(address addr)public returns(bool,bytes memory,address){
        bytes4 methodID=bytes4(keccak256(bytes("inc(uint256)"))); //由4个字节组成的ID即selector函数选择器。
        bytes memory data=abi.encodeWithSignature("inc(uint256)", 8);
        data=abi.encodeWithSelector(methodID, 10);
        (bool _status,bytes memory _data)=address(addr).delegatecall(data);//这么搞的好处就是把返回值给到临时变量。
        return (_status,_data,msg.sender);//此时Counter里面的mgs.sender就不是Caller_by_call而是原始调用者，发现和msg.sender一样了。

    }
}