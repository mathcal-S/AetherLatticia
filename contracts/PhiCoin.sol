// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract PhiCoin is ERC20, Ownable {
    constructor() ERC20("PhiCoin", "PHI") Ownable(msg.sender) {
        _mint(msg.sender, 1_000_000 * 10**18);
    }
    function stake(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
