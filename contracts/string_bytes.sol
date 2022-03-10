// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;


// Solidity supports String literal using both double quote (") and single quote ('). 
// It provides string as a data type to declare a variable of type String.

// values that are made up of ordered sequences of characters, such as "hello world". A string can contain any sequence of characters, visible or invisible, and characters may be repeated. 
contract learnStrings {   

    /****************** CASE 1 ******************/
    /*
        \ skip characters 
        \n for a new line 
    */
    
    string greetings = 'Hello!';

    // memory: much like RAM, Memory in Solidity is a temporary place to store data whereas Storage holds data between function calls. 
    // The Solidity Smart Contract can use any amount of memory during the execution. But, once the execution stops, the Memory is completely wiped off for the next execution.
    function sayHello() public view returns(string memory) {
        return greetings;
    }
    
    function changeGreetings(string memory change) public {
         greetings = change;
    }
    
    
    // strings are too expensive computationally to get length in solidity so you can't do it like other languages 
    // UTF storing (solidity removes the process)


    // convert to bytes
    function getStringLength() public view  returns(uint) {
        bytes memory stringToBytes = bytes(greetings);
        // greetings.length; (X)
        return stringToBytes.length;
    }
    


    /****************** CASE 2 ******************/
    
    string favoriteColor = 'blue';
    
    function getColor() public view returns (string memory) {
        return favoriteColor;
    }
    
    
    function changeColor(string memory _color) public {
        favoriteColor = _color;
    }
    
    function getColorLength() public view returns (uint) {
        bytes memory stringToBytes = bytes(favoriteColor);
        return stringToBytes.length;
    }
    
}