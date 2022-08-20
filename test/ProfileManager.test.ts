import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { expect } from "chai";
import { ethers } from "hardhat";
import { BigNumber } from "ethers";
import { ProfileManager } from "../typechain-types";

var chai = require("chai");
//use default BigNumber
chai.use(require("chai-bignumber")());

describe.only("Tests for ProfileManager", () => {
  let accounts;
  let profileManager: ProfileManager;
  let owner: SignerWithAddress;
  let nonOwner: SignerWithAddress;
  let investor1: SignerWithAddress;
  let addr2: SignerWithAddress;
  let addr1: SignerWithAddress;
  let vault: SignerWithAddress;
  let addrs: SignerWithAddress[];

  const forkChainId: any = process.env.FORK_CHAINID;
  const chainId: any = forkChainId ? forkChainId : 56;

  describe("Tests for ProfileManager contract", () => {
    before(async () => {
      accounts = await ethers.getSigners();
      [owner, investor1, nonOwner, vault, addr1, addr2, ...addrs] = accounts;

      const ProfileManager = await ethers.getContractFactory("ProfileManager");
      profileManager = await ProfileManager.deploy();
      await profileManager.deployed();
    });

    describe("ProfileManager Contract", function () {
      it("Create a new profile", async () => {
        const validHandleBeforeSuffix = "va5z8999008u7sze";
        const MOCK_PROFILE_URI =
          "https://ipfs.io/ipfs/Qme7ss3ARVgxv6rXqVPiikMJ8u2NLgmgszg13pYrDKEoiu";
        const MOCK_FOLLOW_NFT_URI =
          "https://ipfs.fleek.co/ipfs/ghostplantghostplantghostplantghostplantghostplantghostplan";

        await profileManager.createNewProfile({
          to: owner.address,
          handle: validHandleBeforeSuffix,
          imageURI: MOCK_PROFILE_URI,
          followModule: "0x0000000000000000000000000000000000000000",
          followModuleInitData: [],
          followNFTURI: MOCK_FOLLOW_NFT_URI,
        });
      });

      //
    });
  });
});
