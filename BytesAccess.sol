// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
contract BytesAccess{
    event who(address,uint);
    bytes a='hello world';
    function getA()public payable returns(uint,string memory,bytes memory,address,uint){
        a[0]='f';
        return (a.length,string(a),a,msg.sender,msg.value);

    }
receive() external payable { 
    emit who(msg.sender,msg.value);


}

}

