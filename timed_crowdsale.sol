pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20Pausable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/token/ERC20/ERC20Mintable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v2.5.1/contracts/crowdsale/distribution/PostDeliveryCrowdsale.sol";

contract DappTokenCrowdsale is Crowdsale, MintedCrowdsale, TimedCrowdsale, PostDeliveryCrowdsale {
  constructor(
    uint256 _rate,
    address payable _wallet,
    ERC20 _token
  )
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(now, now + 3 days)
    public
    {}
}
