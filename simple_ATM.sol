// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract SimpleATM {
    uint256 public balance;

    // Constructor to add initial balance
    constructor(uint256 initialBalance) {
        balance = initialBalance;
    }

    // User-facing function
    function withdraw(uint256 amount) external {
        _verifyBalance(amount);
        _updateBalance(amount);
    }

    // Internal check (cannot be cancelled by user)
    function _verifyBalance(uint256 amount) internal view {
        require(balance >= amount, "Insufficient balance");
    }

    // Internal function to update balance (cannot be cancelled by user)
    function _updateBalance(uint256 amount) internal {
        balance -= amount;
    }
}
