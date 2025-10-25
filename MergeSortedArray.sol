// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract MergeSortedArray {

    // 假设a1,a2都是升序，返回值也是升序
    function merge(uint256[] memory a1, uint256[] memory a2) public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](a1.length+a2.length);
        uint256 i = 0;
        uint256 j = 0;
        uint256 k = 0;
        while( k < result.length){
            if(i < a1.length){
                if(j < a2.length){
                    if(a1[i] <= a2[j]){
                        result[k] = a1[i];
                        i++;
                    } else {
                        result[k] = a2[j];
                        j++;
                    }
                } else{
                    result[k] = a1[i];
                    i++;
                }
            } else if (j < a2.length){
                result[k] = a2[j];
                j++;
            }
            k++;
        }
        return result;
    }

}