// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ABIEncodePacked{

    uint8 x=2;

    string name="BinSchool.app";

    function encodePacked()external view returns(bytes memory){

        return abi.encodePacked(x,name);
    }
}