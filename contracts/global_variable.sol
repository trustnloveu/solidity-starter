// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract GlobalVariable {
    address public owner;
    uint public sentValue;
    
    constructor() {
        owner = msg.sender;
    }

    function changeOwner() public {
        owner = msg.sender;
    }

    function sendEther() public payable {
        sentValue = msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}