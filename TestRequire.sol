// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
error not(uint a,uint b);
contract TestRequire{
function testRequire(uint _i)public pure{


    require(_i>10,"Input must be greater than 10");
}
function testRevert(uint _i)public pure{


    if(_i<=10){
        revert("Input must be greater than 10"); //

    }
}
uint public num;


function testAssert()public view{

assert(num==0);

}
error InsufficientBalance(uint balance,uint withdrawAmount);

function testCustomError(uint _withdrawAmount)public  payable returns(uint){


    uint bal=address(this).balance;
    if(_withdrawAmount>bal){

        revert InsufficientBalance({balance:bal,withdrawAmount:_withdrawAmount});

    }
    bal-=_withdrawAmount;
    return address(this).balance;
}
receive() external payable { }


}
