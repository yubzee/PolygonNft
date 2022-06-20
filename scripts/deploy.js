async function main() {
  const DogsNft = await hre.ethers.getContractFactory("DogsNft");
  const dogsNft = await DogsNft.deploy();

  await dogsNft.deployed();

  console.log(
    "DogsNft deployed to a mumbai chain at address :",
    dogsNft.address
  );
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
