// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars() external view returns (address, uint, uint, bool, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        bool isEvenBlock = blockNum % 2 == 0;  // Example of using a boolean variable
        uint gasLimit = block.gaslimit;  // Gas limit of the current block
        uint blockDifficulty = block.difficulty;

        return (sender, timestamp, blockNum, isEvenBlock, gasLimit, blockDifficulty);
    }
}

// Insights:
// The globalVars function provides information about the sender's address, the current timestamp, block number, 
// whether the block number is even or odd, gas limit, and block difficulty. It serves as an example of how to use 
// some of the global variables and functions provided by the Ethereum blockchain within a Solidity smart contract.
