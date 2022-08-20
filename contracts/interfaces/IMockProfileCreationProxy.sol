// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "../libraries/DataTypes.sol";

interface IMockProfileCreationProxy {
    function proxyCreateProfile(DataTypes.CreateProfileData memory vars) external;
}