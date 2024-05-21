// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Create a contract named MyToken
contract MyToken {
    // Declare public variables
    string public tokenName = "Kira";
    string public tokenAbbrv = "Kr";
    uint256 public totalSupply = 0; // Use uint256 instead of uint for clarity and consistency

    // Declare a public mapping to store token balances for each address
    mapping(address => uint256) public balance;

    // Mint new tokens and assign them to a specific address
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balance[_address] += _value;
    }

    // Burn existing tokens from a specific address
    function burn(address _address, uint256 _value) public {
        // Check if the balance of the address is greater than or equal to the value to be burned
        if (balance[_address] >= _value) {
            totalSupply -= _value;
            balance[_address] -= _value;
        }
    }
}
