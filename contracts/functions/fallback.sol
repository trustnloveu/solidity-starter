// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

/***************************************************************************************************************** 
    Fallback Functions:

        1. Cannot have a name (anonymous)
        2. Does not take any inputs
        3. Does not return any outputs
        4. Must be declared as external

        Why use it? When you call functions that does not exist
        or send ether to a contract by send, transfer or call 

        statement: send and transfer method recieves 2300 gas but call method receives more (all of the gas) 

 *****************************************************************************************************************/

contract FallBack {
    
    event Log(uint gas);

    receive() external payable {}
    
    // not recommended to write much code in here. Because the function will fail if it uses too much gas
    fallback() external payable {
        // invoke the `send` and `transfer` methods: we get 2300 gas which is enough to emit a log   
        // invoke the `call` method: we get all the gas 
        
        emit Log(gasleft()); // special solidity function gasleft returns how much gas is left
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance; // return the stored balance of the contract 
    }
    
}


// This contract will send ether to Fallback contract which will triggger fallback functions 
contract SendToFallBack {
    
    function transferToFallBack(address payable _to) public payable {
        _to.transfer(msg.value); // To send ether with the transfer method. Automatically, transfer will transfer 2300 gas amount 
    }
    
    
    function callFallBack(address payable _to) public payable { 
        (bool sent,) = _to.call{value:msg.value}(''); // To send ether with the call method
        require(sent, "Failed to send!");
    }
    
}