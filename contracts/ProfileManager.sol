//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 

import "./interfaces/ProfileCreationProxy.sol";
import "./libraries/DataTypes.sol";

import "./interfaces/IMyModule.sol";

contract ProfileManager is AccessControl, Ownable {

  //allows for the withdrawal of the Lens Profile
  bytes32 public constant WITHDRAW_ROLE = keccak256("WITHDRAW_ROLE");

  //allows for posting on behalf of the Lens Profile
  bytes32 public constant POST_ROLE = keccak256("POST_ROLE");

  IMyModule module;
  address private vault;

  ProfileCreationProxy public proxy;

  constructor(address _vault, address _module) {
    // The creator of the smart contract will have all access by default, can be changed later if necessary
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _setRoleAdmin(keccak256("DEFAULT_ADMIN_ROLE"), WITHDRAW_ROLE);

    proxy = ProfileCreationProxy(0x1eeC6ecCaA4625da3Fa6Cd6339DBcc2418710E8a);

    vault = _vault;
    module = IMyModule(_module);
  }

  function grantRole(bytes32 role, address account) public override {
    _grantRole(role, account);
  }

  function revokeRole(bytes32 role, address account) public override {
    _revokeRole(role, account);
  }

  function deposit(address nftAddress, uint256 _tokenId) public {
    IERC721 token = IERC721(nftAddress);
    token.safeTransferFrom(msg.sender, vault, _tokenId); 
  }

  function withdrawFromVault(address _to, uint256 _value, address _token) public {
    require(hasRole(WITHDRAW_ROLE, msg.sender));
    module.executeTransactionOther(_to, _value, _token);
  }

  function createNewProfile(
        string calldata handle,
        string calldata imageURI,
        address followModule,
        bytes calldata followModuleInitData,
        string calldata followNFTURI
    ) public {
        DataTypes.CreateProfileData memory vars = DataTypes.CreateProfileData(vault, handle, imageURI, followModule, followModuleInitData, followNFTURI);
        proxy.proxyCreateProfile(vars);
    }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}