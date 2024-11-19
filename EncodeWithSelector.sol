// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract EncodewithSelector{
    uint256 public value;
    
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