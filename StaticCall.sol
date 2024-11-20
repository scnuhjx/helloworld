// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Callee{
    function bar()external pure returns(string memory){

        return "hello staticcall!";
    }
}
contract StaticCall{
    function foo(address externalAddress) external view returns(bool,string memory){
        //构造调用data
        bytes memory data=abi.encodeWithSignature("bar()");
        (bool _success,bytes memory result ) = address(externalAddress).staticcall(data);
        return (_success,string(result));


    }



}