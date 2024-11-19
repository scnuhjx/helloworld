// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract SelectorDemo{
    function Add(uint a,uint b)public pure returns(uint){

        return a+b;
    }

    function Sub(uint a,uint b) public pure returns(uint){


        return a-b;
    }



}