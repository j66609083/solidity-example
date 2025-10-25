// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract BinarySearch {

    // 返回目标值的数组下标，查不到则返回-1（给定的有序数组必须是升序）
    function search(int[] memory nums, int target) public pure returns (int index) {
        if (nums.length == 0) {
            return -1;
        }
        if (nums.length == 1){
            if (nums[0] == target) {
                return 0;
            } else {
                return -1;
            }
        }
        int left = 0;
        int right = int(nums.length - 1);
        while (left <= right){
            int i = int((left + right) / 2);
            if (nums[uint256(i)] == target) {
                return i;
            } else if (nums[uint256(i)] < target){
                left = i + 1;
            } else {
                if (i == 0) {
                    break ;
                }
                right = i - 1;
            }
        }
        return -1;
    }

} 