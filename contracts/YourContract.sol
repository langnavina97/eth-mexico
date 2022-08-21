pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "./core/LensHub.sol";
import "@aave/lens-protocol/contracts/core/LensHub.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
//import "@lens-protocol/lens-protocol/contracts/core/base/IERC721Time.sol"; This isn't working, says I need to install using npm



// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract ProfileManager is AccessControl {

  //allows for the withdrawal of the Lens Profile
  bytes32 public constant WITHDRAW_ROLE = keccak256("WITHDRAW_ROLE");

  //allows for posting on behalf of the Lens Profile
  bytes32 public constant POST_ROLE = keccak256("POST_ROLE");

  LensHub LensProfile;

  constructor() {
    //The creator of the smart contract will have all access by default, can be changed later if necessary
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _setRoleAdmin(keccak256("DEFAULT_ADMIN_ROLE"), WITHDRAW_ROLE);

   //todo - is this necessary if the msg.sender is already an admin?
    _setupRole(WITHDRAW_ROLE, msg.sender);

    //_setupRole(POST_ROLE, _poster);

    // TODO change address
    LensProfile = LensHub(0x1A1FEe7EeD918BD762173e4dc5EfDB8a78C924A8); //On Mumbai: 0x60Ae865ee4C725cd04353b5AAb364553f56ceF82
  }

  modifier onlyAdmin(bytes32 role) {
    require(
      hasRole(getRoleAdmin(role), msg.sender) || hasRole(keccak256("DEFAULT_ADMIN_ROLE"), msg.sender), "Callere is not an Admin!");
      _;
  }

  function setupRole(bytes32 role, address account) public onlyAdmin(role) {
    _setupRole(role, account);
  }

  function addWithdrawer(address _withdrawer) public {
    _grantRole(WITHDRAW_ROLE, _withdrawer);
  }

  //todo - add some check to ensure that there will always be at least one withdrawer
  function removeWithdrawer(address _withdrawer) public {
    _revokeRole(WITHDRAW_ROLE, _withdrawer);
  }

  function addPoster(address _poster) public {
    _grantRole(POST_ROLE, _poster);
  }

  function removePoster(address _poster) public {
    _revokeRole(POST_ROLE, _poster);
  }

  function post(DataTypes.PostData calldata vars) public {
    require(hasRole(POST_ROLE, msg.sender), "Caller is not a poster");

    //TodoAddData = "test"; //temp code 
    LensProfile.post(vars);

    //todo - Integrate with LensHub Proxy to make post
    //LensProfile.post(TodoAddData)
  }



  function approve(uint256 _tokenId) public {
    LensProfile.approve(msg.sender, _tokenId);
  }

  function deposit(uint256 _tokenId, address contractAddress) public {
    LensProfile.safeTransferFrom(msg.sender, contractAddress, _tokenId, ""); //from, to, tokenId, data
  }


  //Withdraws the profile to the specified address
  function withdraw(address _to, address _contract, uint256 _tokenId) public {
    require(hasRole(WITHDRAW_ROLE, msg.sender), "Caller is not a withdrawer");

    LensProfile.safeTransferFrom(address(this), _to, _tokenId, ""); //todo - LPP supports no data
  }


  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}