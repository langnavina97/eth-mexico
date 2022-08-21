// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
import { run, ethers } from "hardhat";
import { chainIdToAddresses } from "./networkVariables";
import { ProfileManager } from "../typechain-types";
// let fs = require("fs");
const ETHERSCAN_TX_URL = "https://testnet.bscscan.io/tx/";

async function main() {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  await run("compile");

  // get current chainId
  const { chainId } = await ethers.provider.getNetwork();
  const forkChainId: any = process.env.FORK_CHAINID;

  const addresses = chainIdToAddresses[forkChainId];
  const accounts = await ethers.getSigners();
  const [owner] = accounts;

  console.log(
    "------------------------------ Initial Setup Ended ------------------------------"
  );

  console.log("--------------- Contract Deployment Started ---------------");

  const ProfileManager = await ethers.getContractFactory("ProfileManager");
  const profileManager = await ProfileManager.deploy(
    "0xD38C32AAeE0005F3b633954E5D76c5940Dcb14DB",
    "0x610571b323A7Cbf03F957fd551c35BB79Cff1E10"
  );
  await profileManager.deployed();

  console.log("--------------- Create New Profile ---------------");

  const handle = "va5z8969008u67sze";

  console.log("ProfileManager deployed to:", profileManager.address);

  const MOCK_PROFILE_URI =
    "https://ipfs.io/ipfs/Qme7ss3ARVgxv6rXqVPiikMJ8u2NLgmgszg13pYrDKEoiu";
  const MOCK_FOLLOW_NFT_URI =
    "https://ipfs.fleek.co/ipfs/ghostplantghostplantghostplantghostplantghostplantghostplan";

  console.log(
    "------------------------------ Deployment Storage Ended ------------------------------"
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
