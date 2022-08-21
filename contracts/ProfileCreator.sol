// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "./interfaces/IMockProfileCreationProxy.sol";
import "./interfaces/ILensHub.sol";
import "./libraries/DataTypes.sol";


contract ProfileCreator {
    IMockProfileCreationProxy public proxy;
    ILensHub public hub;

    constructor() {
        proxy = IMockProfileCreationProxy(0x420f0257D43145bb002E69B14FF2Eb9630Fc4736);
        hub = ILensHub(0x60Ae865ee4C725cd04353b5AAb364553f56ceF82);
    }

    function createNewProfile(
        address to,
        string calldata handle,
        string calldata imageURI,
        address followModule,
        bytes calldata followModuleInitData,
        string calldata followNFTURI
    ) public {
        DataTypes.CreateProfileData memory vars = DataTypes.CreateProfileData(to, handle, imageURI, followModule, followModuleInitData, followNFTURI);
        proxy.proxyCreateProfile(vars);
    }

    function createPost(DataTypes.PostData memory vars) public {
        hub.post(vars);
    }
}