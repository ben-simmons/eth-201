const Wallet = artifacts.require("Wallet");

module.exports = function (deployer) {
  var owners = ['0xFb0fA9D3c78a01cc3FA04E3e8324ac5378559094', '0xE441Af8707e649Efd4404A74288090DC32b77400', '0x9411Fd0275cc3734a4BB683BD9D3ef4D8a050D68'];
  var limit = 2;
  deployer.deploy(Wallet, owners, limit);
};
