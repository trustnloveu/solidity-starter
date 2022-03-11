// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

/***************************************************************************************************************** 

    Modifier:

        Function Modifiers are used to modify the behaviour of a function. 
        Function Modifiers are customizable modification for functions

        To write a modifier we statically declare the modifier keyword and then name it


    Before Declare:

        What in this code is currently modifying the functions ?

 *****************************************************************************************************************/

contract Owner {

    address owner;
    
    constructor() {
        owner = msg.sender; // when we deploy this contract we want to set the address to the owner (msg.sender)
    }
    
    modifier onlyOwner {
        require(msg.sender == owner); // customizable logic to modify our functions 
        _; // the underscore continues with the function 
    }
    
    modifier enoughValue(uint price) {
        require(msg.value >= price); // msg.value = the amount in wei being sent with a message to a contract 
        _;
    }
    
}


// `is` = a keyword grabbing inheritance from another contract - Owner
contract Register is Owner {
    
   mapping (address => bool) registeredAddresses;
   uint price;
   
   constructor(uint initialPrice) { 
       price = initialPrice; 
       
   }
   
   function register() public payable enoughValue(price) {
      registeredAddresses[msg.sender] = true; // the logic will modify the outcome 
   }
   
   function changePrice(uint _price) public onlyOwner {
      price = _price;
   }
   
}