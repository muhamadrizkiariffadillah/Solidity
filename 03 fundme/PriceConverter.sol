// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library PriceConverter{
     // open docs.chainlink for documentation
    function getPrice()internal view returns(uint256) {
        // address 0xfEefF7c3fB57d18C5C6Cdd71e45D2D0b4F9377bF
        // ABS
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xfEefF7c3fB57d18C5C6Cdd71e45D2D0b4F9377bF);
        (,int256 price,,,) = priceFeed.latestRoundData();
        return uint( price * 1e10);
    }

    function getConversionRate(uint256 ETHAmount)internal view returns (uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountPrice = (ethPrice * ETHAmount) / 1e18;
        return ethAmountPrice;
    }

    function getVersion()internal view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xfEefF7c3fB57d18C5C6Cdd71e45D2D0b4F9377bF);
        return priceFeed.version();
    }
}