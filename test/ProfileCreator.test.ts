import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { expect } from "chai";
import { ethers } from "hardhat";
import { BigNumber } from "ethers";
import { ProfileCreator } from "../typechain-types";

var chai = require("chai");
//use default BigNumber
chai.use(require("chai-bignumber")());

describe.only("Tests for ProfileCreator", () => {
  let accounts;
  let profileCreator: ProfileCreator;
  let owner: SignerWithAddress;
  let nonOwner: SignerWithAddress;
  let investor1: SignerWithAddress;
  let addr2: SignerWithAddress;
  let addr1: SignerWithAddress;
  let vault: SignerWithAddress;
  let addrs: SignerWithAddress[];

  const forkChainId: any = process.env.FORK_CHAINID;
  const chainId: any = forkChainId ? forkChainId : 56;
  const abiCoder = ethers.utils.defaultAbiCoder;

  describe("Tests for ProfileCreator contract", () => {
    before(async () => {
      accounts = await ethers.getSigners();
      [owner, investor1, nonOwner, vault, addr1, addr2, ...addrs] = accounts;

      const ProfileCreator = await ethers.getContractFactory("ProfileCreator");
      profileCreator = await ProfileCreator.deploy();
      await profileCreator.deployed();
    });

    describe("ProfileCreator Contract", function () {
      it("Create a new profile", async () => {
        const validHandleBeforeSuffix = "va5z8999108u7sze";
        const MOCK_PROFILE_URI =
          "https://ipfs.io/ipfs/Qme7ss3ARVgxv6rXqVPiikMJ8u2NLgmgszg13pYrDKEoiu";
        const MOCK_FOLLOW_NFT_URI =
          "https://ipfs.fleek.co/ipfs/ghostplantghostplantghostplantghostplantghostplantghostplan";

        await profileCreator.createNewProfile(
          owner.address,
          validHandleBeforeSuffix,
          MOCK_PROFILE_URI,
          "0x0000000000000000000000000000000000000000",
          [],
          MOCK_FOLLOW_NFT_URI
        );
      });

      it("User creates a new post", async () => {
        const validHandleBeforeSuffix = "va5z8998108u7sze";
        const MOCK_PROFILE_URI =
          "https://ipfs.io/ipfs/Qme7ss3ARVgxv6rXqVPiikMJ8u2NLgmgszg13pYrDKEoiu";
        const MOCK_FOLLOW_NFT_URI =
          "https://ipfs.fleek.co/ipfs/ghostplantghostplantghostplantghostplantghostplantghostplan";

        await profileCreator.createNewProfile(
          owner.address,
          validHandleBeforeSuffix,
          MOCK_PROFILE_URI,
          "0x0000000000000000000000000000000000000000",
          [],
          MOCK_FOLLOW_NFT_URI
        );

        const MOCK_URI =
          "https://ipfs.io/ipfs/QmbWqxBEKC3P8tqsKc98xmWNzrzDtRLMiMPL8wBuTGsMnR";
        const mockModuleData = abiCoder.encode(["uint256"], [1]);

        await profileCreator.createPost({
          profileId: 1,
          contentURI: MOCK_URI,
          collectModule: "0x0BE6bD7092ee83D44a6eC1D949626FeE48caB30c",
          collectModuleInitData: abiCoder.encode(["bool"], [true]),
          referenceModule: "0x0000000000000000000000000000000000000000",
          referenceModuleInitData: [],
        });
      });

      //
    });
  });
});
