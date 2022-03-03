// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract GlobalVar {
    // Unix Timestamp. 'now' is deprecated and is an alias to block.timestamp
    // the current time as a timestamp (seconds from 01 Jan 1970)
    uint public current_time = block.timestamp;

    // the current block number
    uint public block_number = block.number;

    // the block difficulty to mine in PoW
    uint public difficulty = block.difficulty;

    // the block gas limit
    uint public gaslimit = block.gaslimit;
}