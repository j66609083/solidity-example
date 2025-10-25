// SPDX-License-Identifier: MIT
pragma solidity ~0.8.12;

contract IntegerToRoman {



    // 整数转罗马数字
    function IntToRoman(uint256 num) public pure returns (string memory){
            uint16[13] memory values = [
        1000, 900, 500,400, 100, 90,50,40, 10, 9, 5, 4, 1
    ];

            string[13] memory symbols = [
                "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"
            ];

        string memory result;
        for( uint256 i = 0; i < values.length; i++ ){
            while (num >= values[i]) 
            {
                num -= values[i];
                result = string.concat(result, symbols[i]);
            }
            if (num <= 0){
                break ;
            }
        }
        return result;
    }
}