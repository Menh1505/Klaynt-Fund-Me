// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {MockDataFeedAggregator} from "../test/mocks/MockDataFeedAggregator.sol";
import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
    NetworkConfig public activeNetworkConfig;

    uint8 public constant DECIMALS = 8;
    int256 public constant INITIAL_PRICE = 2000e8;

    struct NetworkConfig {
        address priceFeed;
    }

    event HelperConfig__CreatedMockPriceFeed(address priceFeed);

    constructor() {
        if (block.chainid == 1001) {
            activeNetworkConfig = getBaobabKlayConfig();
        } else {
            activeNetworkConfig = getOrCreateAnvilBaobabConfig();
        }
    }

    function getBaobabKlayConfig()
        public
        pure
        returns (NetworkConfig memory baobabNetworkConfig)
    {
        baobabNetworkConfig = NetworkConfig({
            priceFeed: 0x33D6ee12D4ADE244100F09b280e159659fe0ACE0 // KLAY / USDT
        });
    }

    function getOrCreateAnvilBaobabConfig()
        public
        returns (NetworkConfig memory anvilNetworkConfig)
    {
        // Check to see if we set an active network config
        if (activeNetworkConfig.priceFeed != address(0)) {
            return activeNetworkConfig;
        }
        vm.startBroadcast();
        MockDataFeedAggregator mockPriceFeed = new MockDataFeedAggregator(
            DECIMALS,
            INITIAL_PRICE
        );
        vm.stopBroadcast();
        emit HelperConfig__CreatedMockPriceFeed(address(mockPriceFeed));

        anvilNetworkConfig = NetworkConfig({priceFeed: address(mockPriceFeed)});
    }
}
