// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Bridge} from "../src/Bridge.sol";

contract BridgeTest is Test {
    Bridge public bridge;

    function testSetUp() public {
        bridge = new Bridge();
    }
}
