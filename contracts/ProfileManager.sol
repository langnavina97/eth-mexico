// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "./interfaces/IMockProfileCreationProxy.sol";
import "./libraries/DataTypes.sol";
import "hardhat/console.sol";


contract ProfileManager {
    IMockProfileCreationProxy public proxy;
    constructor() {
        proxy = IMockProfileCreationProxy(0x420f0257D43145bb002E69B14FF2Eb9630Fc4736);
    }

    function createNewProfile(DataTypes.CreateProfileData memory vars) public {
        proxy.proxyCreateProfile(vars);
    }
}