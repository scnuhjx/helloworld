// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
interface IERC20{
    function name()external view returns(string memory);
    function symbol()external view returns(string memory);
    function decimals()external view returns(uint8);
}

contract IRC20 is IERC20 {
    string _name = "MyCoin";
    string _symbol = "MYC";
    uint8 _decimals=18;
    function name()external view returns(string memory){
        return _name;
    }
    function symbol()external view returns(string memory){
        return _symbol;
    }
    function decimals()external view returns(uint8){
        return _decimals;
    }
}