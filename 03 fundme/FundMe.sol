// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe{
        uint256 public minimumUSD = 5e18;

    function fund() public payable {
        require(getConversionRate(msg.value) >= minimumUSD, "didn't enough send ETH");
    }

    // open docs.chainlink for documentation
    function getPrice()public view returns(uint256) {
        // address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABS
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = priceFeed.latestRoundData();
        return uint( price * 1e10);
    }

    function getConversionRate(uint256 ETHAmount)public view returns (uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountPrice = (ethPrice * ETHAmount) / 1e18;
        return ethAmountPrice;
    }

    function getVersion()public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFeed.version();
    }
}