// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract EtherUints{
uint public oenWei=1 wei;
bool public isOneWei= 1 wei ==1;

uint public oneEther=1 ether;
bool public isOneEther= 1 ether ==1e18;

function get_isOneEther()public view returns(bool,bool){

    return (isOneEther,isOneWei);
}


}