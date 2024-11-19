// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Unchecked{

    function sum()external pure returns(uint){

        uint result =0;
        for(uint i=0;i<1000;i++){//用unchecked以后gas费大幅度降低；
            unchecked{   
            }
            result+=i;
        }
        return result;
    }
}

contract UncheckOverflow{
    function sum()external pure returns(uint){

        uint r=type(uint).max-1;
        unchecked{  //用unchecked以后不报错。而且结果是错的。
        r+=100;
        }
        return r;
    }


}
