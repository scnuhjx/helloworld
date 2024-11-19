// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Counter{

    uint public count=10;
    function inc(uint num)public returns(uint){

        return count+=num;
    }
}
contract Caller_by_call{



    uint count=20;
    function callByAddr(address addr)public returns(bool){
        bytes4 methodID=bytes4(keccak256("inc(uint)"));
        addr.call(methodID,2);

    }
}