pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Mincoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Mincoin(address _owner)  UpgradeableToken(_owner) {
    name = "Mincoin";
    symbol = "mnc";
    totalSupply = 1000000000000000000;
    decimals = 9;

    balances[_owner] = totalSupply;
  }
}