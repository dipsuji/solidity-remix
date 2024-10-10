//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract {

    string public ourString = "Hello World";

    function updateOurString(string memory _updateString) public {
        ourString = _updateString;
    }

}

//  1- Starting, Stopping and Interacting with Smart Contracts¶
//https://ethereum-blockchain-developer.com/2022-01-remix-introduction/02-starting-stopping-interacting/?coupon=udemy_77288

// 2- Read and Write to Smart Contract¶
// https://ethereum-blockchain-developer.com/2022-01-remix-introduction/04-read-write-to-smart-contract/?coupon=udemy_77288
