// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

/***************************************************************************************************************** 

    View & Pure

        `View` ensures that they will not modify the state (return values). 
        `Pure` ensures that they not read or modify the state (return calculations).

 *****************************************************************************************************************/

contract MyContract {
    
    uint value;

    function getValue() external view returns(uint) { // = It's a read only function that returns a value  
        return value; 
    }

    function getNewValue() external pure returns(uint) {
        return 3 + 3; 
    }

    function setValue(uint _value) external { // It modifies the state value 
        value = _value;
    }

    function multiply() external pure returns(uint) {
        return 3 * 7;
    }

    function valuePlusThree() external view returns(uint) {
        return value + 3;
    }

}
