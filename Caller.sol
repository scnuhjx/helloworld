// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Caller{

    function callExternalFunc(address contractAddress)
        external returns(bool,bytes memory){
            bytes memory data=abi.encodeWithSignature("setValue(uint256)",8);
            return contractAddress.call(data);



        }

}