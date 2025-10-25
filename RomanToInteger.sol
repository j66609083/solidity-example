// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract RomanToInteger {

    mapping(bytes1 => uint256) symbols;

    constructor(){
        symbols['I'] = 1;
        symbols['V'] = 5;
        symbols['X'] = 10;
        symbols['L'] = 50;
        symbols['C'] = 100;
        symbols['D'] = 500;
        symbols['M'] = 1000;
    }

    // 罗马数字转整数
    function RomanToInt(string memory roman) public view returns (uint256){
        bytes memory romanChars = bytes(roman);
        int result = 0;
        for( uint256 i = 0; i < romanChars.length; i++ ){
            int v = int(symbols[romanChars[i]]);
            if (i < romanChars.length - 1 && v < int(symbols[romanChars[i+1]])){
                result -= v;
            } else {
                result += v;
            }
        }
        return uint256(result);
    }
}