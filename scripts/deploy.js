
const hre = require("hardhat");

async function main() {

  const a = await hre.ethers.deployContract("");

  await a.waitForDeployment();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
