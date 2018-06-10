/*

  Copyright 2018 ZeroEx Intl.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity ^0.4.24;
pragma experimental ABIEncoderV2;

import "../interfaces/IAssetProxyDispatcher.sol";

contract MAssetProxyDispatcher is
    IAssetProxyDispatcher
{

    // Logs registration of new asset proxy
    event AssetProxySet(
        uint8 id,
        address newAssetProxy,
        address oldAssetProxy
    );

    /// @dev Forwards arguments to assetProxy and calls `transferFrom`. Either succeeds or throws.
    /// @param assetData Byte array encoded for the respective asset proxy.
    /// @param assetProxyId Id of assetProxy to dispach to.
    /// @param from Address to transfer token from.
    /// @param to Address to transfer token to.
    /// @param amount Amount of token to transfer.
    function dispatchTransferFrom(
        bytes memory assetData,
        uint8 assetProxyId,
        address from,
        address to,
        uint256 amount
    )
        internal;
}
