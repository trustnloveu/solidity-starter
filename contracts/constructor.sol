// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Property {
    int public price;
    string public location;
    address immutable public owner; // 'immutable' keyword make variables initialized at declaration or in contructor only
    int immutable area = 100;
    // int constant area = 100;


    // Declaring the constructor
    // It's executed only once at contract's deployment
    constructor(int _price, string memory _location) {
        price = _price;
        location = _location;
        // 'msg.sender' is global built-in variable
        // After this contract is deployed, nothing will be able to change it with, if it's declared with 'immutiable'
        // The gas of constant or immutable costs much lower than regular state variables
        owner = msg.sender; 
        
    }
    
    function setPrice(int _price) public {
        price = _price;
    }

    function setLocation(string memory _location) public {
        location = _location;
    }
}