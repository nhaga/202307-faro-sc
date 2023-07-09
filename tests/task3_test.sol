// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;
import "remix_tests.sol";
import "../contracts/Token.sol";

contract TestTask3 {
    ERC20 token;

    // beforeEach works before running each test
    function beforeEach() public {
        token = new ERC20("TKN", "My Token", 18);
    }

    /// Test if initial value is set correctly
    function symbolShouldBeTKN() public returns (bool) {
        return Assert.equal(token.symbol(), "TKN", "symbol is not correct");
    }

    function nameShouldBeMyToken() public returns (bool) {
        return Assert.equal(token.name(), "My Token", "name is not correct");
    }

    function decimalsShouldBe18() public returns (bool) {
        return Assert.equal(token.decimals(), 18, "decimals value is not correct");
    }

    function totalSupplyShouldBe50000() public returns (bool) {
        return Assert.equal(token.totalSupply(), 5000 * 1e18, "initial value is not correct");
    }
}