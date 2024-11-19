// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract LoopAccess{
    string[] a=["h","j"];
    string b='h';
    event Who(address,uint);
        event Err(string);
    function getAlength()public view returns(string[] memory ){
        if(keccak256(bytes(a[0]))!=keccak256(bytes(b)))
        {
            
        }
      return a;

    }
    function sum()public pure returns(uint){
        uint result=0;
        uint i=1;
        do{
            result=result+i;
            i++;


        } while(i<=10);
        return  result;
    }

    function sumFor()public returns(uint){
            uint r=0;
            for(uint i=0;i<=100;i++)
                {
                    if(i==10){
                        emit Err("text");
                        continue ;
                    }
                    r+=i;
                if(i==10){
                    break;
                }

                }
            return r;
    }
 receive() external payable {
    emit Who(msg.sender,msg.value);
  }


}