// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract FixedSizeArray {
    // declaring a fixed-size array of type uint with 3 elements
    uint[3] public numbers = [2, 3, 4];

    // declaring fixed-size arrays of type bytes
    bytes1 public b1; // = 0x00
    bytes2 public b2; // = 0x0000
    bytes3 public b3; // = 0x000000
    // .. up to bytes32

    
    // changing an element of the array at a specific index
    function setArrayElement(uint index, uint value) public {
        numbers[index] = value;
    }
    
    // returning the number of elements in the array
    function getArrayLength() public view returns(uint) {
        return numbers.length;
    }

    // setting bytes arrays
    function setBytesArray() public {
        b1 = 'a'; // => 0x61 // It'll be encoded in UTF-8 and stored in Hexadecimal value of ASCII code
        b2 = 'ab'; // => 0x616263
        b3 = 'abc'; // => 0x616263 ( z = '0x7A' )
        // b3[0] = 'a'; // Can't be modified

        // byte is an alias for bytes1 on older cod
    }
}