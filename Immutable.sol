// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Immutalbe{

    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;
    constructor(uint _myUint){
        MY_ADDRESS=msg.sender;
        MY_UINT=_myUint;

    }


}