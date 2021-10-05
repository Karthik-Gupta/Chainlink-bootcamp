// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
 
    AggregatorV3Interface internal priceFeed;
 
    /**
     * Network: Kovan
     * Aggregator: ETH/USD
     * Address: 0x9326BFA02ADD2366b30bacB125260Af641031331
     */
    constructor() public {
        priceFeed = AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331);
    }
 
    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            , 
            int price,
            ,
            ,
            
        ) = priceFeed.latestRoundData();
        return price;
    }
    
    function getTimestamp() public view returns (int) {
        (
            ,
            int timeStamp,
            ,
            ,
            
        ) = priceFeed.latestRoundData();
        return timeStamp;
    }
}
