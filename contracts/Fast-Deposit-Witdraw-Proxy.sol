// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

struct seed {
    address token;
    uint pct;
}

interface etf {
    function pct() external view returns (seed[] memory);
    function pctAmout(uint256 a) external view returns (uint256[] memory);
    function deposit(address o ,uint256 a) external;
    function withdraw(address o ,uint256 a) external;
}

interface swap{

}

contract ETFProxy {
    address internal owner;
    uint256 internal feeRate;

    function depositByErc20() public returns (uint256)
    {
        
    }
}