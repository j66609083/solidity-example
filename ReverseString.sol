// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ReverseString {

    // 反转一个字符串。仅支持英文字符
    function reverse(string memory str) public pure returns(string memory){
        bytes memory chars = bytes(str);
        bytes memory reverseStr = new bytes(chars.length);
        for (uint256 i = 0 ; i < chars.length; i++) {
            reverseStr[i] = chars[chars.length - i - 1];
        }
        return string(reverseStr);
    }
}