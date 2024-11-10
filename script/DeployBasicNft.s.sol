// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";
import {console} from "forge-std/console.sol";

contract DeployBasicNft is Script {
    uint256 public DEFAULT_ANVIL_PRIVATE_KEY = ac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;
    //73IUH3PF12AGK3SV2HYQHBU2116SH43I7S
    uint256 public deployerKey;

    function run() external returns (BasicNft) {
        vm.startBroadcast();
        BasicNft basicNft = new BasicNft();
        vm.stopBroadcast();
        return basicNft;
    }
}
