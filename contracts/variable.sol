// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Property {
    // State Variable
    // Declaring state variables saved in contract's 'storage'
    int public price; // default value = 0 in 'int'
    string constant public location = "South Korea"; // 'constant' type should be declared with default value

    /*
        To Change Default Value of State Variables

        1. Variable 'Declaration'
        2. Inject value in 'Contructor'
        3. Use 'Setter'
    */

    /*
        Where EVM save data

        1. Storage
        2. Stack        : Local Valiable > Primitive Type
        3. Memory       : Local Valiable > Reference Type
    */


    function fn() public pure returns (int) {
        // Local Variable
        int num = 5; 
        num = num * 2;

        // string memory text = "abc"; // 'string' should be declared using specific keyword, such as 'memory', 'storage' or 'calldata'

        return num;
    }
}