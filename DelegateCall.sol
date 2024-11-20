// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Counter{

    uint public count=10;
    function inc(uint num)public returns(uint){

        return count+=num;
    }
}
contract Caller_by_call{

   

    uint public count=20;
    function callByAddr(address addr)public returns(bool,bytes memory){
        bytes4 methodID=bytes4(keccak256(bytes("inc(uint256)"))); //由4个字节组成的ID即selector函数选择器。
        bytes memory data=abi.encodeWithSignature("inc(uint256)", 8);
        data=abi.encodeWithSelector(methodID, 10);
        return address(addr).delegatecall(data);

    }
}