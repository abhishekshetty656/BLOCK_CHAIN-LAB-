// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvenOdd {

    function checkNum(uint _number) public pure returns (string memory) {
        if (_number % 2 == 0) {
            return "EVEN";
        } else {
            return "ODD";
        }
    }
}
