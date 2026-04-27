# Solidity Calculator & Testing Suite

A calculator smart contract developed to demonstrate proficiency in **Solidity** development and professional-grade testing workflows using **Foundry**.

## Overview

This project serves as a technical showcase for implementing mathematical logic on the Ethereum Virtual Machine (EVM). While the arithmetic operations are fundamental, the core value of this repository lies in the implementation of the development lifecycle, focusing on security, precision, and efficiency.

## Key Features

- **Basic Arithmetic:** Precise implementation of addition, subtraction, multiplication, and division.
- **Underflow/Overflow Protection:** Utilization of Solidity 0.8.31 built-in checks to ensure mathematical integrity.
- **Gas Efficiency:** Optimized function visibility and state management to minimize on-chain execution costs.

## Testing Architecture (Foundry)

The contract is accompanied by a comprehensive test suite written in Solidity, leveraging the **Foundry** toolkit:

- **Unit Testing:** Detailed test cases for every function to ensure logic coverage.
- **Fuzzing (Property-Based Testing):** Implementation of Foundry's fuzzing capabilities to validate the contract against thousands of random inputs, ensuring no edge cases result in unexpected behavior.
- **Trace Analysis:** Detailed inspection of stack traces to identify and resolve potential logic errors during development.
- **Gas Snapshots:** Monitoring of gas usage per function via `forge snapshot` to ensure the contract remains highly optimized.

## Technical Stack

- **Language:** Solidity
- **Framework:** Foundry (Forge, Cast)
- **Environment:** EVM-compatible
