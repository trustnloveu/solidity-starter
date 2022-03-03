// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract GlobalVariable {
    address public owner;
    uint public sentValue;
    
    constructor() {
        // msg.sender is the address that interacts with the contract ('deploys' it in this case)
        owner = msg.sender;
    }

    function changeOwner() public {
        // msg.sender is the address that interacts with the contract ('calls the function' in this case)
        owner = msg.sender;
    }

    function sendEther() public payable {
        // must be payable to receive ETH with the transaction
        // msg.value is the value of wei sent in this transaction (when calling the function)
        sentValue = msg.value;
    }

    // returning the balance of the contract
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // calculate remaining gas
    function getRemainingGas() public view returns(uint) {
        uint start = gasleft();

        uint traffic = 1;
        for (uint i = 1; i < 20; i++) {
            traffic *= i;
        }

        uint end = gasleft();
        return start - end;
    }
}