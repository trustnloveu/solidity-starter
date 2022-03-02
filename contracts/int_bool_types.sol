// SPDX-License-Identifier: GPL-3.0

// Above Remix version 0.8.0, it's automatically check data overflow, which will revert error result 
pragma solidity ^0.8.0;

contract Property {
    // 1. Boolean -> Default value = false
    bool public sold;

    // 2. Integer
    // int & uint ::: 8, 16, 32, 64, 128, 256 (default)
    // 'Overflow' or 'Underflow' can be occured if the type of Integer is not proper
    uint8 public num_a = 255; // uint8 -> 0 ~ 255
    int8 public num_b = -10; // int8 -> -126 ~ 127

    function fn() public {
        num_a += 1; // >>> Can cause 'Integer Overflow'
        // unchecked { num_a += 1; } // It works on under 0.8.0 remix version
    }

    // 'Sate Math' Library to prevent the overflow issue
    // For safty check
}