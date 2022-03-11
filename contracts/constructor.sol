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

/******************************************************************************************************************************/


/* 
    Constructor is a special function using constructor keyword. 
    It initializes state variables of a contract. 

    Following are key characteristics:

        1. A contract can have only one constructor.

        2. A constructor code is executed once when a contract is created and it is used to initialize contract state.

        3. After a constructor code executed, the final code is deployed to blockchain. 
        This code include public functions and code reachable through public functions. 
        Constructor code or any internal method used only by constructor are not included in final code.

        A constructor can be either public or internal.

        A internal constructor marks the contract as abstract.

        In case, no constructor is defined, a default constructor is present in the contract.
*/

contract Member {
    string name;
    uint age;
    
    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member {
    constructor(string memory _name, uint _age) Member(_name, _age) {

    }
    
    function getName() public view returns(string memory) {
        return name;
    }
}

/*
    Exercise:
        1. Create a contract called Base which stores full accessible (inside and outside) data upon deployment 
        2. Create a contract called Derived which derives the data from base and runs a function that always outputs the data to the integer 5. 
*/

contract Base {
   uint data;
   constructor(uint _data) {
      data = _data;   
   }
}

contract Derived is Base (5) {
   function getData() public view returns(uint) {
       return data;
   }   
}