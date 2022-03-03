// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Auction {
    // a variable of type mapping
    // keys are of type address and values of type uint
    mapping(address => uint) public bids;

    // initialize the mapping variable
    // the key is the address of the account that calles the function
    // and and the value is the value of wei sent when calling the function
    function bid() payable public {
        bids[msg.sender] = msg.value;
    }
}