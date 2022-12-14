// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract GasOptimization {
  // State variable to store the total sum
  uint public total;

  // Function to optimize gas usage
  function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    uint _total = total; // Store total in a local variable for faster access
    uint len = nums.length; // Cache array length in memory

    // Loop through the array and sum up the even numbers that are less than 99
    for (uint i = 0; i < len; ) {
      uint num = nums[i];
      if (num % 2 == 0 && num < 99) {
        _total += num;
      }
      unchecked {
        ++i; // Increment the loop counter
      }
    }

    total = _total; // Set the state variable to the calculated total
  }
}
