const funders = artifacts.require("funders");

module.exports = function(deployer) {
  deployer.deploy(funders);
};
