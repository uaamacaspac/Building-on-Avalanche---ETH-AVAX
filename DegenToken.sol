// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    uint256 public constant w_price = 100;
    uint256 public constant a_price = 200;

    mapping(address => uint256) public weaponsOwned;
    mapping(address => uint256) public armorOwned;

    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        _mint(msg.sender, 10 * (10 ** uint256(decimals())));
    }

    function mintTokens(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burnTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Not enough tokens");
        _burn(msg.sender, amount);
    }

    function transferTokens(address to, uint256 amount) public {
        require(to != address(0), "Invalid address");
        require(balanceOf(msg.sender) >= amount, "Not enough tokens");
        _transfer(msg.sender, to, amount);
    }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function checkWeaponsOwned(address user) public view returns (uint256) {
        return weaponsOwned[user];
    }

    function checkArmorOwned(address user) public view returns (uint256) {
        return armorOwned[user];
    }

    function redeemWeapon(uint256 quantity) public {
        uint256 cost = w_price * quantity;
        require(balanceOf(msg.sender) >= cost, "Not enough tokens");

        weaponsOwned[msg.sender] += quantity;
        _burn(msg.sender, cost);
    }

    function redeemArmor(uint256 quantity) public {
        uint256 cost = a_price * quantity;
        require(balanceOf(msg.sender) >= cost, "Not enough tokens");

        armorOwned[msg.sender] += quantity;
        _burn(msg.sender, cost);
    }
}
