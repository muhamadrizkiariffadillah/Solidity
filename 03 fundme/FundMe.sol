// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {PriceConverter} from "03 fundme/PriceConverter.sol";

contract FundMe{
        using PriceConverter for uint256;
        uint256 public minimumUSD = 5e18;
        address[] public funders;
        mapping(address => uint256) public addressToAmountSenders;

    function fund() public payable {
        require(msg.value.getConversionRate() >= minimumUSD, "didn't enough send ETH");
        funders.push(msg.sender);
        addressToAmountSenders[msg.sender] += msg.value;
    }

    function withdraw() public {

        for(uint funderIndex = 0; funderIndex < funders.length;funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountSenders[funder] = 1;
        }
        // reset an array
        funders = new address[](0);

        // payable(msg.sender).transfer(address(this).balance);
        // bool isSuccess = payable(msg.sender).send(address(this).balance);
        // require(isSuccess,"send failed");
        (bool isSuccessPay, )=payable(msg.sender).call{value: address(this).balance}("");
        require(isSuccessPay,"call failed");
    }

}