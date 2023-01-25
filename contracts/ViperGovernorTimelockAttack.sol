// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./ViperGovernorTimelock.sol";

contract TimelockAttack {
    TimelockController timelock = TimelockController(address(0xF1B34984eCe0ffB0233Ad60e7dDab74770e394b9));
    function hasRole(bytes32 role, address account) public view returns (bool) {
        return timelock.hasRole(role, account);
    }
}