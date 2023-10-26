// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

abstract contract ERC20Etf is ERC20 {
    address payable public owner;
    event  Withdrawal(address indexed src, uint wad);
    event  Mint(address indexed src, uint wad);
    struct seed {
        address token;
        uint pct;
    }
    seed[] internal target;
    uint256 internal totalPct = 0 ;

    function pct() public view virtual returns (seed[] memory) {
        return target;
    }

    function pctAmout(uint256 a) public view virtual returns (uint256[] memory) {
        uint256[] memory u =new uint256[]((target).length);
        for(uint i = 0 ; i < target.length ; i ++)
        {
            u[i]=a*(ERC20((target[i].token)).decimals() * target[i].pct) / (totalPct*decimals());
        }
        return u;
    }

    constructor(seed[] memory s) {
        for(uint i = 0 ; i < s.length ; i ++)
        {
            totalPct+=s[i].pct;
        }
    }

    function deposit(address o ,uint256 a) public {
        uint256[] memory bals = pctAmout(a);
        for(uint i = 0 ; i < bals.length ; i++)
        {
            ERC20(target[i].token).transferFrom(o,address(this),bals[i]);
        }
        _mint(_msgSender(),a);
        emit Mint(_msgSender(), a);
    }
    function withdraw(address o ,uint256 a) public {
        require(balanceOf(_msgSender()) >= a);
        _burn(_msgSender(),a);
        uint256[] memory bals = pctAmout(a);
        for(uint i = 0 ; i < bals.length ; i++)
        {
            ERC20(target[i].token).transferFrom(address(this),o,bals[i]);
        }
        emit Withdrawal(_msgSender(), a);
    }
}
