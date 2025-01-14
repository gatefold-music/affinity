// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Affinity} from "../src/Affinity/Affinity.sol";


// source .env
// forge script script/DeployPoller.s.sol:DeployScript --rpc-url $SEPOLIA_RPC_URL  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_KEY -vvvv

// forge script script/DeployPoller.s.sol:DeployScript --rpc-url $BASE_SEPOLIA_RPC_URL  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $BASESCAN_KEY -vvvv

// forge script script/DeployErc20.s.sol:DeployScript --rpc-url $MAINNET_RPC_URL  --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_KEY -vvvv

// forge script script/DeployVerifier.s.sol:DeployScript --fork-url http://localhost:8545 \ --sender 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --broadcast


contract DeployScript is Script {

    function setUp() public {
    }

    function run() external {
        vm.startBroadcast();

        vm.stopBroadcast();
    }
}
