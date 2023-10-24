const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Test", function () {
  it("test only", async function () {
    const [owner] = await ethers.getSigners();
  });
});