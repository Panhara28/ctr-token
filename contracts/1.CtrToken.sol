// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
// you can use any valid ERC20 import from OpenZeppelin's contracts library
import  "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol"; 
import  "@openzeppelin/contracts/access/Ownable.sol";

contract CTRToken is ERC20Burnable, Ownable{
    uint256 private constant _maxSuplly = 16800000 * (10**18);

    constructor() ERC20("CTRToken","CTR") Ownable(msg.sender){
        _mint(msg.sender, _maxSuplly);
    }

}