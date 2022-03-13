// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

/*****************************************************************************************************************

   Event
      Abstaction
         -> On a smart contract, by the time traders trade tokens an event will be emitted
         -> Then, they get the data of event message through web3.js

      After emitting events, it's not possible to read events, but only for entities outside of the blockchain

 *****************************************************************************************************************/

contract Events {

   event NewTrade(
      uint indexed date, // Only use 3 `indexed` per event
      address from,
      address indexed to,
      uint indexed amount
   );

   function trade(address to, uint amount) external {
      // Outside consumer can see the event throught web3.js
      emit NewTrade(block.timestamp, msg.sender, to, amount);
   }

}  