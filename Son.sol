// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "./Parent.sol";
contract Son is Parent{
    uint public s;
    event Salary(uint);
    function getSalary()public pure override returns(uint){

        return 3000;
    }
    constructor(string memory _name,uint _age){
    name=_name;
    age=_age;
    s=getSalary();
    emit Salary(s);
    }
    
  
}