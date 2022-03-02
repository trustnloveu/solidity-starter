// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Property {
    // Default Visiblity for variables is 'Private'
    // 'Public' Declaration is equals to 'Getter Function'
    int public price;
    string location = "Busan"; // 'private' is omitted. By default is private
    
    function setPrice(int _price) public {
        price = _price;
    }

    // view = pure, which can restrict function state mutablitiy
    // A function declared 'view' does not alter the blockchain
    function getPrice() public view returns(int) {
        return price;
    }

    function setLocation(string memory _location) public {
        location = _location;
    }

    // String types must be declared memory or storage
    function getLocation() public view returns(string memory) {
        return location;
    }
}