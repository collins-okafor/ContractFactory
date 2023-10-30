// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import "hardhat/console.sol";

contract Shoe {
    string private shoe;

    constructor(string memory _shoe) {
        console.log("Deploying a shoe", _shoe);
        shoe = _shoe;
    }

    function makeShoe() public view returns (string memory) {
        return shoe;
    }

    function setShoe(string memory _shoe) public {
        console.log("Changing shoe from '%s' to '%s'", shoe, _shoe);
        shoe = _shoe;
    }
}
