// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "./Maths.sol";
contract TestLib{
    using Maths for uint;
    function test(uint x,uint y) public pure returns (uint,uint) {
        return (Maths.add(5, 6),x.add(y));
    
    }


}