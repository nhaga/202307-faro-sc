// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;


 contract SimpleStorage {
    uint256 storedValue = 1904;

    function set(uint256 _storedValue) public {
        storedValue = _storedValue;
    }

    function get() public view returns (uint256) {
        return storedValue;
    }
}