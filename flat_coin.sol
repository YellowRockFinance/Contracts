
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20Mintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20Burnable.sol";

contract YellowRock is ERC20, ERC20Detailed, ERC20Mintable, ERC20Burnable {
    using SafeMath for uint256;

    constructor(uint256 initialSupply) ERC20Detailed("YellowRock", "YR", 18) public {
        _mint(msg.sender, initialSupply);
    }
}