// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

contract Task1 {
    function seeMyBalance() public view returns (uint256) {
        return msg.sender.balance;
    }
}