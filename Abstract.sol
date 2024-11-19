// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
abstract contract Abstract{
string public name;
uint public age;


function getSalary()public  virtual returns(uint,string memory,uint);

}

contract Child3 is Abstract{
function getSalary()public override returns(uint,string memory,uint){
    name='hjx';
    age=10;
    return (3000,name,age);

}


}