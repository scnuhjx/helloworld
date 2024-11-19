// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Callee{
    string value1;
    string value2;

    constructor(string memory _value1,string memory _value2)payable{
        value1 = _value1;
        value2 = _value2;
    }
    
    function getValue1()public view returns(string memory) {
        return value1;
    }
}

contract ContractCreator{
    constructor()payable{}
    event showCalleeInstanceFunction(string);
    event showNewInstanceAddr(address);
    event showBalance(address,uint);
    address public newContractAddress;
    function createContract(string memory value1,string memory value2)external{
    Callee callee=new Callee(value1,value2);
    emit showBalance(newContractAddress,newContractAddress.balance);
    emit showNewInstanceAddr(address(callee));
    newContractAddress=address(callee);
    emit showCalleeInstanceFunction(callee.getValue1());
    selfdestruct(payable(address(callee)));
}           


}