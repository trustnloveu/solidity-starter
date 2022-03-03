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