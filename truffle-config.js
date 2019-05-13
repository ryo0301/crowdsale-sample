module.exports = {
  networks: {
    development: {
      host: "172.17.0.2",
      port: 8545,
      network_id: "*",
      gas: 4600000,
    },
  },
  mocha: {
  },
  compilers: {
    solc: {
      version: "0.5.2"
    }
  }
}
