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


/***************************************************************************************************************** 
    
    Special variables (global variables)

        It's globally available variables and provides information about the blockchain. 
    
        msg.sender          : Sender of the message (current call), msg.value (uint): Number of wei sent with the message., 
        block.timestamp     : Current block timestamp as seconds since unix epoch, block.number (uint): current block number
        ...


        REF ::: https://docs.soliditylang.org/en/v0.8.10/units-and-global-variables.html

 *****************************************************************************************************************/

contract LedgerBalance {

    mapping(address => uint) balance;

    function updatesBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }

}


/***************************************************************************************************************** 
    1. create a new contract called Updated
    2. (if you haven't done this) copy the contract LedgerBalance above your new contract
    3. create a public function called updatesBalance
    4. instantiate the data type contract LedgerBalance to a new variable called ledgerbalance (similar to struct or enum).
    5. set the new variable ledgerbalance = new LedgerBalance() 
    6. update the ledgebalance to 30 
    7. deploy both contracts and up then update the ledgerbalance by 30 using the Updated contract 
 *****************************************************************************************************************/

contract UpdateLedgerBalance {
    
    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updatesBalance(30);
    }
    
}