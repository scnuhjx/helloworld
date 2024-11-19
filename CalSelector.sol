// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract CalSelector{
    function selector()external pure returns(bytes4){

        return (bytes4(keccak256(bytes("Add(uint256,uint256)"))));

    }

}