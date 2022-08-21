//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 

import "./interfaces/IMockProfileCreationProxy.sol";
import "./interfaces/ILensHub.sol";
import "./libraries/DataTypes.sol";

import "./interfaces/IMyModule.sol";

contract ProfileManager is AccessControl, Ownable {

  //allows for the withdrawal of the Lens Profile
  bytes32 public constant WITHDRAW_ROLE = keccak256("WITHDRAW_ROLE");

  //allows for posting on behalf of the Lens Profile
  bytes32 public constant POST_ROLE = keccak256("POST_ROLE");

  IMyModule module;
  address private vault;

  IMockProfileCreationProxy public proxy;
  ILensHub public hub;

  constructor(address _vault, address _module) {
    // The creator of the smart contract will have all access by default, can be changed later if necessary
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _setRoleAdmin(keccak256("DEFAULT_ADMIN_ROLE"), WITHDRAW_ROLE);

    proxy = IMockProfileCreationProxy(0x420f0257D43145bb002E69B14FF2Eb9630Fc4736);
    hub = ILensHub(0x60Ae865ee4C725cd04353b5AAb364553f56ceF82);

    vault = _vault;
    module = IMyModule(_module);
  }

  function grantRole(bytes32 role, address account) public override {
    _grantRole(role, account);
  }

  function revokeRole(bytes32 role, address account) public override {
    _revokeRole(role, account);
  }

  function post(DataTypes.PostData calldata vars) public {
    require(hasRole(POST_ROLE, msg.sender), "Caller is not a poster");
    hub.post(vars);
  }


  function deposit(address nftAddress, uint256 _tokenId) public {
    IERC721 token = IERC721(nftAddress);
    token.safeTransferFrom(msg.sender, vault, _tokenId); 
  }

  function withdrawFromVault(address _to, uint256 _value, address _token) public {
´    require(hasRole(WITHDRAW_ROLE, msg.sender));
    module.executeTransactionOther(_to, _value, _token);
  }

  /*
  For later versions when Lens removes the Whitelisting
  
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
    */

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}