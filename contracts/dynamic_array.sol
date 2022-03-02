// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/*
    Dynamic Array contains 3 methods
    1 .length
    2 .push
    3 .pop
*/ 

contract DynamicArrays {
    // dynamic array of type uint
    uint[] public numbers;

    // returning length
    function getLength() public view returns(uint) {
        return numbers.length;
    }

    // appending a new element
    function addElement(uint item) public {
        numbers.push(item);
    }
    
    // returning an element at an index
    function getElement(uint i) public view returns(uint) {
        if (i < numbers.length) {
            return numbers[i];
        }
        return 0;
    }

    // removing the last element of the array
    function popElement() public {
        numbers.pop();
    }

    // 'pure' can be added, if it doesn't use blockchain
    function createMemoryArray() public {
        uint[] memory array = new uint[](3);

        array[0] = 10;
        array[1] = 20;
        array[2] = 30;

        numbers = array;
    }
}