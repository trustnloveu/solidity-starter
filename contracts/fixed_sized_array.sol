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

 /***************************************************************************************************************** 
    WHAT ARE ARRAYS ?
        Array is a data structure, which stores a fixed-size sequential collection of elements of the same type. 
        An array is used to store a collection of data, 
        but it is often more useful to think of an array as a collection of variables of the same type.
 
    1. How To Write An Array
    2. pop, push, and length methods
    3. remove elements from array
 *****************************************************************************************************************/

contract learnArrays {
    
  uint[] public myArray; /// add 1 2 3 4 ...
  uint[200] public myFixedSizedArray;
  
    // The `push()` method adds one or more elements to the end of an array and returns the new length of the array.
    function push(uint number) public {
        myArray.push(number);
    }
    
    // The `pop()` method removes the last element from an array and returns that value to the caller.
    function pop() public {
        myArray.pop();
    }
    
    // `length` is a string property that is used to determine the length of a string
    function getlength() public view returns (uint) {
        return myArray.length;
    }
    
    function remove(uint i) public {
        delete myArray[i];
        // when you delete in your array the length remains the same
        // i = 0 = 1, 2 = 1, 3 = 2         
    }
}

/*****************************************************************************************************************
    Exercise create a function that can fully remove an item from an array
        1. Create an Empty array called changeArray
        2. Create a function called removeElement which sets the index argument of the array to the last element in the array
        3. remove the last index from that function with the pop method
        4. Create a function called test which pushes 1 2 3 4 into changeArray
        5. remove the element 2 from the array when the contract is called
 *****************************************************************************************************************/

contract testArrays {

    uint[] public changeArray;
    
    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    } 
    
    function pushNumbers() public {
        changeArray.push(1);
        changeArray.push(2);
        changeArray.push(3);
        changeArray.push(4);
    }
    
    function getArray() public view returns (uint) {
        return changeArray.length;
    }
}