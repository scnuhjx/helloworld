// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Struct{

struct Account{
    address owner;
    uint balance;
}
Account account=Account(msg.sender,2 ether);
Account[] accounts;
function creatAccount()public{


   // Account memory account1=Account(msg.sender,0);
  //account=Account({owner:msg.sender,balance:1});
  accounts.push(Account(msg.sender,2 ether));
}

function deposit(uint amount)public returns(uint){

   account.balance=account.balance+amount;
   return account.balance;

}
function getAccount()public view returns(Account[] memory,uint,uint){

    return (accounts,accounts.length,account.balance);
}

}