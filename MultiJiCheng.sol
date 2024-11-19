// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ContractA{
    function fooA()public pure returns(string memory){
        return "hello contract A";
    }
    function foo()public pure virtual returns(string memory){
        return "hello contractA ";
    }
}
contract ContractB{
   function fooB()public pure returns(string memory){
        return "hello contract B";

   }
   function fooBB()public pure virtual  returns(string memory){
    return "hello contract BB";
   }
   function foo()public pure virtual returns(string memory){

    return "hello contractB ";
   }


}

contract ContractC is ContractA,ContractB{

function fooBB()public pure override returns(string memory){
    return "override fooBB";
  }


function fooC()public pure returns(string memory){
    return super.fooBB();
 }
function foo()public pure override(ContractA,ContractB) returns(string memory){
    return super.foo();
}
}
