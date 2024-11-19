// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Parent{
    string public name;
    uint public age;
    function getSalary()public pure virtual returns(uint){

        return 1000;
    }
}
