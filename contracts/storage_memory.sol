// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Property {
    string[] public cities = ['Buasn', 'Seoul'];

    // This won't modify blockchain
    function f_memory() public {
        string[] memory s1 = cities;
        s1[0] = 'LA';
    }

    // This will change blockchain
    function f_storage() public {
        string[] storage s1 = cities;
        s1[0] = 'Tokyo';
    }
}