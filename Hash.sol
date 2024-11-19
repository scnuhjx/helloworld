// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Hash{

function hash(string memory _s)public pure returns(bytes32){
    bytes32  result=keccak256(bytes(_s));
    return result;

}

function bijiao(string memory _x,string memory _y) public pure returns(bool){

    return (keccak256(bytes(_x))==keccak256(bytes(_y)));

}
}


