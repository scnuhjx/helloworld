// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract EncodewithSelector{
    uint256 public value;
    /*三种调用方式
    btyes memory data=abi.encodeWithSignature("set(uint256)", arg);
    address(this).call{value:1 ether}(data);//data调用数据放进去地址.call调用。

    */
    function encode()external   returns(bool,bytes memory){


        bytes4 selector=bytes4(keccak256(bytes("set(uint256")));//这个是生成函数的选择器，是一个4字节数组

        uint256 param=888;
        bytes memory data=abi.encodeWithSelector(selector,param);
        return address(this).call(data);
    

    }
     function encodeWithSig()external   returns(bool,bytes memory) {
        uint256 param=888;
        return address(this).call(abi.encodeWithSignature("set(uint256)",param));
        
    

    }

    function set(uint _value)external  returns(uint){
        value=_value;
        return _value;
    }
    receive() external payable { }
    fallback() external payable { }

}