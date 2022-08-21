import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { expect } from "chai";
import { ethers } from "hardhat";
import { BigNumber } from "ethers";
import { ProfileManager } from "../typechain-types";

var chai = require("chai");
//use default BigNumber
chai.use(require("chai-bignumber")());

describe.only("Tests for ProfileCreator", () => {
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
  const abiCoder = ethers.utils.defaultAbiCoder;

  describe("Tests for ProfileCreator contract", () => {
    before(async () => {
      accounts = await ethers.getSigners();
      [owner, investor1, nonOwner, vault, addr1, addr2, ...addrs] = accounts;

      const ProfileManager = await ethers.getContractFactory("ProfileManager");
      profileManager = await ProfileManager.deploy(
        "0xD38C32AAeE0005F3b633954E5D76c5940Dcb14DB",
        "0x610571b323A7Cbf03F957fd551c35BB79Cff1E10"
      );
      await profileManager.deployed();
    });

    describe("ProfileCreator Contract", function () {
      it("Create a new profile", async () => {
        const validHandleBeforeSuffix = "va5z8999108u7sze";
        const MOCK_PROFILE_URI =
          "https://ipfs.io/ipfs/Qme7ss3ARVgxv6rXqVPiikMJ8u2NLgmgszg13pYrDKEoiu";
        const MOCK_FOLLOW_NFT_URI =
          "https://ipfs.fleek.co/ipfs/ghostplantghostplantghostplantghostplantghostplantghostplan";

        await profileManager.createNewProfile(
          owner.address,
          validHandleBeforeSuffix,
          MOCK_PROFILE_URI,
          "0x0000000000000000000000000000000000000000",
          [],
          MOCK_FOLLOW_NFT_URI
        );
      });

      //
    });
  });
});
