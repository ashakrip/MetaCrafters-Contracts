//SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.13;

contract Errors {
    function testRequire(uint256 _amt) public pure {
        require(_amt > 100, "Minimum input of 100 required");
    }

    function testRevert(uint256 _i) public pure {
        if (_amt <= 100 {
            revert("Value must be 100 or more");
        }
    }

    uint256 public num;

    function testAssert() public view {
        assert(num == 0);
    }

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}
