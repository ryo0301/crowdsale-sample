pragma solidity >=0.5.0 <0.6.0;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';

contract SampleCoin is ERC20Mintable, ERC20Burnable, ERC20Detailed {

  string private _name = "SampleCoin";
  string private _symbol = "SAMPLE";
  uint8 private _decimals = 18;

  constructor(uint value)
    ERC20Detailed(_name, _symbol, _decimals)
    ERC20Burnable()
    ERC20Mintable()
    public
  {
    _mint(msg.sender, value);
  }
}
