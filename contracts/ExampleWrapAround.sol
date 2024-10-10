//SPDX-License-Identifier: MIT

pragma solidity 0.7.0;

// In previous versions of Solidity (prior Solidity 0.8.x) an integer would automatically roll-over to a lower or higher number. 
//If you would decrement 0 by 1 (0-1) on an unsigned integer, the result would not be -1, or an error, the result would simple be: type(uint).max.

//If you deploy this and run "increment" more than 5 time, the myUint8 will just magically start from 0 again. No warning.
// this can become problematic.
contract ExampleWrapAround {

    uint8 public myUint8 = 250; 

    function decrement() public {
        myUint8--;
    }

    function increment() public {
        myUint8++;
    }
}

// The problem is, those cases are actually pretty rare. Normally, we don't want an integer to roll over. 
//That's why in 0.8 it changed to be the default behavior to error out if the maximum/minimum value is reached. But you can still enforce this behavior. With an unchecked block. Let's see an example.

pragma solidity 0.8.15;

contract ExampleWrapAround {
    uint256 public myUint;

    function decrementUintUnchecked() public {
        unchecked {
            myUint--;
        }
    }

    function decrementUint() public {
        myUint--;
    }
}

// If you run decrementUintUnchecked it will go from 0 to the 2^256 - 1.
