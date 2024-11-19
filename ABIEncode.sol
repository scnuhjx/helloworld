// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ABIEncode{

    uint8 x=2;
    string name= "binSchool.app" ;//字符串。
    event logString(string name);
    function encode()external view returns(bytes memory){


        return abi.encode(x,name);
    }
    function decode()external  view returns(uint8,string memory){
        bytes memory data=abi.encode(x,name);
        emit logString(string(bytes(0x62696e5363686f6f6c2e617070)));
        return abi.decode(data,(uint8,string));
        


    }

}