// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Decalaration {
    int public numA = 100;
    int numB = 500;

    function publicFn() public view returns(int) {
        return numA;
    }

    function privateFn() private view returns(int) {
        return numA;
    }

    function publicCallPrivateFn() public view returns(int) {
        int testNum;
        testNum = privateFn();
        return testNum;
    }

    function internalFn() internal view returns(int) {
        return numA;
    }

    // It can only be called out of contract. But, it gurantees more efficent gas consumtion
    function externalFn() external view returns(int) {
        return numA;
    }

    // function callEnternalFn() public pure returns(int) {
    //     return externalFn();
    // }
}

contract Inhertence is Decalaration {
    int public testNumA = publicCallPrivateFn();
    int public testNumB = internalFn();
    // int public testNumB = privateFn(); // Error
}

contract Instance {
    Decalaration public instance = new Decalaration();
    int public externalFn = instance.externalFn();

    // int public testNumA = instance.privateFn(); // -> 'Private' is out of bounds
    // int public testNumB = instance.internalFn(); // -> 'Internal' is out of bounds
}