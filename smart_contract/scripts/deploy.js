const ethers = require('hardhat');

const main = async () => {

  const tinderfactory = await ethers.getContractFactory('Transaction');

  const tinderdeploy = tinderfactory.deploy()

  console.log("Tinder Contract address", tinderdeploy);

}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.log("error in deploying", error);
    process.exit(1);
  })