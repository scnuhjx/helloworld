// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Gas{
uint public i=0;
event jilu(address,string);
function forever()public returns(uint){
while(i<=1000){
    i+=1;
}
emit jilu(msg.sender,"nice to meet you");
return i;


}




}