// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StaticArray {
    // 初始化固定长度数组为[1,2,3]
    uint[3] balance = [uint(1), 2, 3];
    struct Human{
        string name;
        uint256 weight;
        uint height;
        string sex;

    }

    function staticArray() external returns (string memory) {
        // 获取第 3 个元素的值
        uint element = balance[2];
        Human[] memory humans;
       humans[0]=Human('hjx',60,170,'male');
       humans[1]=Human('zp',50,161,'female');
       //uint8 leng=uint8(humans.length);
        // 设置第 3 个元素的值乘以 2
        balance[2] = element * 2;
        balance[1]=3;

        // 返回数组的长度和数组所有元素
        return (string(humans[1].name));
    }
}