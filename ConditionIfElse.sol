// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ConditionIfElse{


    function transfer(uint _amout) public pure returns(bool){

        if (_amout ==0)
        {
            return false;
        }
        else {

            return true;
        }
         


    }
    receive() external payable { }

}