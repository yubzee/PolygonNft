const { expect } = require("chai");

describe("DogsNft", function () {
  it("Should return the right name and symbol", async function () {
    const DogsNft = await hre.ethers.getContractFactory("DogsNft");
    const dogsNft = await DogsNft.deploy();

    await dogsNft.deployed();
    expect(await dogsNft.name()).to.equal("DogInu");
    expect(await dogsNft.symbol()).to.equal("DGI");
  });
});
