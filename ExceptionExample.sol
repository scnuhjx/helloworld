// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract ExceptionExample{
    int[]public numbers;
    uint public counter;

    
    function addtion(uint _addend)public returns(uint){

        counter++;
        numbers.push(int(_addend));
        if( _addend==0){
            revert("Cannot be 0");
        }
    return counter;

    }

    function readNumber(uint _index)public view returns(int){

        return numbers[_index];
    }

    function overflowError()public{

        counter+=256;
        emit overflowError("an overflow error has occured");
    }
}