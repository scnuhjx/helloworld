//SPDX-License-Identifier:MIT
pragma solidity 0.8.28;
contract MappingAccess{
    struct Struct1{
        mapping(address=>bool) a;
        mapping(address=>uint) accounts;
    }
    mapping (uint=>Struct1) b;
    Struct1 hjx;
    constructor(){
        hjx.accounts[msg.sender]=100;

    }
function getHjxAccouts(address _add)public  returns(uint){
    hjx.accounts[_add]+=100;
    return hjx.accounts[_add];

}


}