
const hre = require("hardhat");

async function main() {
  const Factory = await ethers.getContractFactory("Factory");
  // const factory = await Factory.deploy();
  const factory = await Factory.deploy({ gasPrice: 1000000000 }); 


  console.log("factory deployed to:", factory.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
