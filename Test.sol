
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;


contract Test{
    string[] public lists=['h','j'];
    string a=lists[0];

    function getLists()public view returns(string memory){
        return lists[0];
    }
}