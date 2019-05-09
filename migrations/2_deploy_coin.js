const SampleCoin = artifacts.require("SampleCoin");

module.exports = function(deployer) {
  const v = '100000000';
  const initialSupply = web3.utils.padRight(v, v.length+18);
  deployer.deploy(SampleCoin, web3.utils.toHex(initialSupply));
};
