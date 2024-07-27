# DegenToken Smart Contract

## Overview

The `DegenToken` smart contract is an ERC20 token contract that supports basic token functionalities including minting, burning, and transferring tokens.

## Features

- **ERC20 Token Standard**: Implements the standard ERC20 functions for token management.
- **Token Minting**: Allows the contract owner to mint new tokens.
- **Token Burning**: Allows users to burn their tokens.
- **Token Transfer**: Users can transfer tokens to other addresses.
- **Weapon and Armor Redemption**: Users can redeem tokens for weapons and armor at predefined prices.

## Contract Details

- **Token Name**: Degen
- **Token Symbol**: DGN

## Functions

- **mintTokens(address to, uint256 amount)**: Allows the owner to mint tokens to a specified address.
- **burnTokens(uint256 amount)**: Allows users to burn a specified amount of tokens from their balance.
- **transferTokens(address to, uint256 amount)**: Allows users to transfer tokens to another address.
- **checkBalance(address account)**: Returns the token balance of a specified address.
- **checkWeaponsOwned(address user)**: Returns the number of weapons owned by a specified user.
- **checkArmorOwned(address user)**: Returns the number of armor pieces owned by a specified user.
- **redeemWeapon(uint256 quantity)**: Allows users to redeem tokens for weapons.
- **redeemArmor(uint256 quantity)**: Allows users to redeem tokens for armor.

## Constants

- **w_price**: The price for one weapon (100 tokens).
- **a_price**: The price for one armor (200 tokens).

## Setup and Deployment

1. **Install Dependencies**:
   Ensure you have OpenZeppelin Contracts installed. You can install it using npm:
   ```bash
   npm install @openzeppelin/contracts
   ```

2. **Deploying**:
   Deploy the contract using remix and use `Injected Provider - Metamask` for your environment.

## Testing

For testing purposes, you can use the Avalanche Fuji Testnet. Add AVAX to your address using the following testnet faucets:

- [Chainlink Fuji Faucet](https://faucets.chain.link/fuji)
- [Core Testnet Faucet](https://core.app/tools/testnet-faucet/?subnet=c&token=c)
