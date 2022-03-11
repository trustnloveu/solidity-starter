// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

/***************************************************************************************************************** 
    Ether Units
        Ethereum is the blockchain and Ether is the currency for Ethereum 

    Time Units
        Similar to currency, Solidity has time units where lowest unit is second and we can use like below as suffix to denote time.
        
        seconds 
        minutes
        hours
        days
        weeks
 *****************************************************************************************************************/

contract learnEtherUnits {
    
    function etherUnits() public pure {
        // wei is the smallest denomination of ether
        assert(1000000000000000000 wei == 1 ether); // 10^18 wei = 1 eth
        assert(1 wei == 1); // 1 wei = 1 
        
        assert(1 ether == 1e18); // 1 ether == 1e18
        assert(2 ether == 2000000000000000000 wei); 
    }
    
    
    function timeUnits() public pure {
        
        assert(1 minutes == 60 seconds);
        assert(24 hours == 1440 minutes);
        assert(1 days == 24 hours);
        assert(1 weeks == 7 days);
        
        // assert(10 == 9 + 2);
    }  
}