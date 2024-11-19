// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    // Constructor to set initial token details and owner
    constructor() ERC20("MyToken", "MTK") Ownable(msg.sender) {}

    // Mint function, callable only by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function, callable by any user
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
