// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Voting {

    // 存储候选人的得票数
    mapping(string name => uint256 votes) votesStore;
    // 存储候选人
    string[] condidates;

    // 允许用户投票给某个候选人
    function vote(string memory name) public {
        votesStore[name]++;
        condidates.push(name);
    }

    // 返回某个候选人的得票数
    function getVotes(string memory name) public view returns(uint256) {
        return votesStore[name];
    }

    // 重置所有候选人的得票数
    function resetVotes() public {
        for (uint i = 0; i < condidates.length; i++) {
            delete votesStore[condidates[i]];
        }
    }
}