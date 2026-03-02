//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Viewvoting{
    function Eligibility(uint age) public pure returns (string memory) {
        if (age < 18) {
            return "Not Eligible";
        } else {
            return "Eligible";
        }
    }
}
