// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
interface IERC20{

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
}
contract UserInterface{
    function getFuck()external view returns(string memory,string memory,uint8){

        IERC20 fuck=IERC20(0x8f80516c66AE0AD755322B129B413AE0C257D969);
        return(fuck.name(),fuck.symbol(),fuck.decimals());

    }


}

