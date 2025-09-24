// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Bridge {
    address private usdtContractAddress;

    constructor(address _usdtContractAddress) {
        usdtContractAddress = _usdtContractAddress;
    }

    function deposit(uint256 _amount) public {
        uint256 allowance = IERC20(usdtContractAddress).allowance(
            msg.sender,
            address(this)
        );
        require(allowance >= _amount, "Insufficient allowance.");
        IERC20(usdtContractAddress).transferFrom(
            msg.sender,
            address(this),
            _amount
        );
    }
}
