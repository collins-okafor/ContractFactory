// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./Shoe.sol";

contract Factory {
   Shoe[] public ShoeArray;

   function CreateNewShoe(string memory _shoe) public {
     Shoe shoe = new Shoe(_shoe);
     ShoeArray.push(shoe);
   }

   function gfSetter(uint256 _shoeIndex, string memory _shoe) public {
     Shoe(address(ShoeArray[_shoeIndex])).setShoe(_shoe);
   }

   function gfGetter(uint256 _shoeIndex) public view returns (string memory) {
    return Shoe(address(ShoeArray[_shoeIndex])).makeShoe();
   }
}