// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract HelloWorld{

    function  returnHelloWorld()public pure returns(string memory,string memory){
        string memory s1="hello";
        return ("Hello World",s1);
    }
}