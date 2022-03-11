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

/***************************************************************************************************************** 
    Mapping
        Mapping is a reference type as arrays and structs. Following is the syntax to declare a mapping type.
        Mapping allows you to save data and add a key that you specifiy and then retrieve that info later
        Similar to struct or an array  -  it is a reference typr 
        in Solidity you can't iterate through a map - you need to store the keys in an array and you can't give size

        get set and delete a value from mapping 
 *****************************************************************************************************************/

contract learnMapping {
    
    // key and value - key can be string uint or bool - value can be anything
    mapping(address => uint) public myMap;
    
    function getAddress(address _addr) public view returns (uint) {
        return myMap[_addr];
    }
    
    // similar to an array and similar how you'd update an array element
    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }
    
    
    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}

/*****************************************************************************************************************    
    Exercise:
        Deplay the mapping contract and create some keys as addresses and set those keys to unique values 
        Remove all the addresses and check to see their updated value.
        
    Assignment:
        Create a unique data type as a struct called Movie and give it the string properties: title and diretor.
        Create a map called movie which takes a uint as a key and Movie as a value 
        create a function called addMovie which takes three inputs, movie id, title and director which assigns a value of an integer to a movie added back to the movie map. It should include a title and director name.
        Deploy the contract and update the movie information to the movie map with our favorite movies! 
 *****************************************************************************************************************/    

contract testMapping {
    
    struct Movie {
      string title;
      string director;
    }

    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovie;
    
    function addMovie(uint id, string memory title, string memory director) public {
            movie[id] = Movie(title, director); 
    }
    
    function addMyMovie(uint id, string memory title, string memory director) public {
        myMovie[msg.sender][id] = Movie(title, director); 
        // msg.sender is a global variable accessible throughout solidity which captures the address that
        // is calling the contract
    }

}