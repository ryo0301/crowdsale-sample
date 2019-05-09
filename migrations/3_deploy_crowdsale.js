const SampleCoin = artifacts.require("SampleCoin");
const SampleCoinCrowdsale = artifacts.require("SampleCoinCrowdsale");

module.exports = function(deployer, network, accounts) {
  deployer.then(async () => {
    const rate = 1;
    const wallet = accounts[0];
    const coin = await SampleCoin.deployed();
    const sale = await deployer.deploy(SampleCoinCrowdsale, rate, wallet, coin.address);

    const value = await coin.totalSupply();
    await coin.transfer(sale.address, web3.utils.toHex(value.toString()));
  });
}
