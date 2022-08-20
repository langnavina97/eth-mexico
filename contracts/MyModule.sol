// SPDX-License-Identifier: LGPL-3.0-only

/**
 * @title MyModule for a particular Index
 * @notice This contract is used for creating a bridge between the contract and the gnosis safe vault
 * @dev This contract includes functionalities:
 *      1. Add a new owner of the vault
 *      2. Transfer BNB and other tokens to and fro from vault
 */
pragma solidity ^0.8.10;

import "@gnosis.pm/zodiac/contracts/core/Module.sol";

interface InputData {
    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external;
}

contract MyModule is Module {
    address public moduleOwner;

    constructor(address _owner) {
        bytes memory initializeParams = abi.encode(_owner);
        setUp(initializeParams);
        moduleOwner = msg.sender;
    }

    modifier onlyModuleOwner() {
        require(moduleOwner == msg.sender);
        _;
    }

    function transferModuleOwnership(address newOwner) public onlyModuleOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        moduleOwner = newOwner;
    }

    /// @dev Initialize function, will be triggered when a new proxy is deployed
    /// @param initializeParams Parameters of initialization encoded
    function setUp(bytes memory initializeParams) public override initializer {
        __Ownable_init();
        address _owner = abi.decode(initializeParams, (address));

        setAvatar(_owner);
        setTarget(_owner);
        transferOwnership(_owner);
    }

    function executeTransactionOther(
        address _from,
        address _to,
        uint256 _tokenId,
        address _token
    ) public onlyModuleOwner returns (bool success) {
        bytes memory inputData = abi.encodeWithSelector(
            InputData.safeTransferFrom.selector,
            _from,
            _to,
            _tokenId
        );

        success = exec(_token, 0, inputData, Enum.Operation.Call);
    }
}