// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Loop{


    function loop()public pure returns(uint,uint){
       uint i;
       for(i=0;i<10;i++){
        if(i==3){
            continue ;
        }
        if(i==5){
            break ;
        }
       }
       
        uint j;
        while(j<=10){
            j++;
        }
        return (i,j);
    }
}