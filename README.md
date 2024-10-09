# solidity-remix
Solidity Basic for Learning Smart Contract with Remix IDE

## Cryptocurrency (And Blockchain) Playbook

https://docs.google.com/spreadsheets/d/1OO06RZ7vw8-Hij8ZxB68FaRYRtQEz3GifnLDNwW8sTs/edit?gid=1051902784#gid=1051902784

### online editior - 
https://remix.ethereum.org/

### Set up remix

https://ethereum-blockchain-developer.com/2022-01-remix-introduction/01-setup-remix/


### Chapter
1. **MyContract.sol**
        -  Starting, Stopping and Interacting with Smart Contract.
        - Read and Write to Smart Contract¶
2. **ExampleBoolean.sol**
        - The first one you'll need to know are simple booleans. They can be true or false!
        - Default Value -> All variables in Solidity are initialized with their default value. There is no undefined or null!
3. **ExampleUint.sol**
        - About Integers and Unsigned Integers¶
        - Unsigned Integers in Solidity going from 0 to 2^256-1. However, signed integers need one bit to store the sign of the number (negative or positive). 
4. **ExampleWrapAround.sol**
        - versions of Solidity (prior Solidity 0.8.x) an integer would automatically roll-over to a lower or higher number.
        - If you would decrement 0 by 1 (0-1) on an unsigned integer, the result would not be -1, or an error, the result would simple be: type(uint).max.
        - uint8 ranges from 0 to 255. If you increment 255 it will automatically be 0, if you decrement 0, it will become 255 if the operation is unchecked. No warnings, no errors.
        - That's why in 0.8 it changed to be the default behavior to error out if the maximum/minimum value is reached. But you can still enforce this behavior. With an unchecked block. Let's see an example.

