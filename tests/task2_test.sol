// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;
import "remix_tests.sol";
import "../contracts/SimpleStorage.sol";

contract TestTask2 {
    SimpleStorage simpleStorage;

    // beforeEach works before running each test
    function beforeEach() public {
        simpleStorage = new SimpleStorage();
    }

    /// Test if initial value is set correctly
    function initialValueShouldBe1904() public returns (bool) {
        return Assert.equal(simpleStorage.get(), 1904, "initial value is not correct");
    }

    /// Test if value is set as expected
    function valueIsSet200() public returns (bool) {
        simpleStorage.set(200);
        return Assert.equal(simpleStorage.get(), 200, "value is not 200");
    }
}