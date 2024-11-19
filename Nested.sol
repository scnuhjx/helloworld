// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract NestedMapping{
mapping(address => mapping(uint=>bool))public nested;
function get(address _addr1,uint _i)public view returns(bool){
return nested[_addr1][_i];


}
function set(address _addr1,uint _i,bool _boo)public {
    nested[_addr1][_i] = _boo;
}

function remov(address _addr1,uint _i ) public{
    delete nested[_addr1][_i];
}
}