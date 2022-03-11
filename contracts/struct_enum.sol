// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// a struct type outsite of a contract can be used in any contract declard in this file
struct Instructor {
    uint age;
    string name;
    address addr;
}

// Contract 1 (Academy)
contract Academy {
    Instructor public academyInstructor; // a state variabla of type Instructor

    enum State { Open, Closed, Unknown } // a new enum type

    State public academyState = State.Open; // declare and initialize a new state variable of type State

    // initializie the struct in the constructor
    constructor(uint _age, string memory _name) {
        academyInstructor.age = _age;
        academyInstructor.name = _name;
        academyInstructor.addr = msg.sender;
    }

    // change a struct state variable
    function changeInstructor(uint _age, string memory _name, address _addr) public {
        if (academyState == State.Open) {
            Instructor memory myInstructor = Instructor({
                age: _age,
                name: _name,
                addr: _addr
            });

            academyInstructor = myInstructor;
        }
    }
}

// Contract 2 (School)
contract School {
    Instructor public schoolInstructor;
}


/***************************************************************************************************************** 
    Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.
    With the use of enums it is possible to reduce the number of bugs in your code.
    enum for our food app that offers either large medium or small options!
 *****************************************************************************************************************/

contract enumsLearn {

    enum shirtColor {RED, WHITE, BLUE}
    
    shirtColor choice;
    shirtColor constant defaultChoice = shirtColor.BLUE;
    
    function setWhite() public {
        choice = shirtColor.WHITE;
    }
    
    function getChoice() public view returns(shirtColor) {
        return choice;
    }
    
    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice);
    }
}

// 1. create an enum for the color of shirts called shirtColor and set it to the options of either RED or WHITE or BLUE
// 2 create a data of shirtColor called defaultChoice which is a constant set to the color BLUE 
// 3. create a data of shirtColor called choice and don't initiate the value
// 4. create a function called setWhite which changes the shirt color of shirtColor to white
// 5. create a function getChoice which returns the current choice of shirtColor
// 6. create a function getDefaultChoice which returns the default choice of shirtColor