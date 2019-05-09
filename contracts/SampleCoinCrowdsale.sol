pragma solidity >=0.5.0 <0.6.0;

import './SampleCoin.sol';
import 'openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

contract SampleCoinCrowdsale is Crowdsale {

  constructor(uint256 _rate, address payable _wallet, IERC20 _token)
    Crowdsale(_rate, _wallet, _token)
    public
  {
  }

}
