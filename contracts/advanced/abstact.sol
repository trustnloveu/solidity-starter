// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

/*****************************************************************************************************************

    ABSTRACT

        `Abstract contract` is one which contains at least one function without any implementation. 
        Such a contract is used as `a base contract`. 

        Generally an abstract contract contains both implemented as well as abstract functions. 
        Derived contract will implement the abstract function and use the existing functions as and when required.

 *****************************************************************************************************************/


abstract contract Member {
    string name;
    uint age = 3;
    
    // this function makes it abstract since it has no body 
    function setName() public virtual returns (string memory);
    // if i define one more function - 
    function returnAge() public view returns(uint) {
        return age;
    } 
}


contract Teacher is Member {
    
    function setName() public override pure returns(string memory) {
        return "Francesca";
    }
    
}


/*****************************************************************************************************************

    Exercise:
        1. Create an abstract base contract called Calculator with a read only public function that returns integers 
        2. Create a derived contract called Test which derives the Calculator contract and can calculate 1 + 2 and return the result 

 *****************************************************************************************************************/


abstract contract Calculator {
   function getResult() public virtual view returns(uint);
}

contract Test is Calculator {
   function getResult() public override pure returns(uint) {
      uint a = 1;
      uint b = 2;
      uint result = a + b;
      return result;
   }
}
