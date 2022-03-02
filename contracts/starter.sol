// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
// pragma solidity >=0.5.0 < 0.9.0;

contract Property {
    uint private price;
    address public owner;

    // constructor
    constructor() {
        price = 0;
        owner = msg.sender;
    }

    // Function Modifier
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    /* 
        Declear Functions
        which are the contrat interface
    */
    function changeOwner(address _owner) public onlyOwner {
        owner = _owner;
    }

    function setPrice(uint _price) public {
        price = _price;
    }

    /// @notice Returns the price of the property
    function getPrice() view public returns (uint) {
        return price;
    }

    // Event
    event OnwerChanged(address owner);
}