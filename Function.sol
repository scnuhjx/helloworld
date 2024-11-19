// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Function{
    function returnMany()public pure returns(uint,bool,uint){

        return(5,true,2);

    }

    function named()public pure returns(uint x,bool b,uint y){
        return(1,true,2);

    }

    function assigned()public pure returns(uint x,bool b,uint y){
        x=1;
        b=true;
        y=2;

    }

    function destructuringAssignments()public pure returns(uint,bool,uint,uint,uint)
    {
        (uint i,bool b,uint j)=returnMany();
        (uint x,uint y)=(4,5);
        return(i,b,j,x,y);

    }
    function arrayInput(uint[] memory _arr)public{}
    uint[] public arr;
    function  arrayInitializer()public{
        arr=new uint[](5);
        arr[0]=1;
        arr[4]=5;
        arr[2]=7;
        
    }

    function arrayOutput()public view returns(uint[]memory){
        return arr;
    }

    function calculate(uint x) public pure returns(uint256){
        return x*2;
    }


    function myPublicFunction()public{}
    
    function myPrivateFunction()private{}
    
    function myInternalFunction()internal{}
    
    function myExternalFunction()external{}

function calculate2(uint[] calldata _numbers)public pure returns (uint){
    uint sum=0;
    for(uint i=0;i<_numbers.length;i++){

        sum+=_numbers[i];
    }
    return sum;



}
    event PaymentReceived(address from,uint amount);
function receivePayment() external payable {
    emit PaymentReceived(msg.sender,msg.value);

 }
}
