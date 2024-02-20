// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample{
    
    mapping(address=> uint256) public ValueMapping;

    function setValue(uint256 _value) public{
        require(_value !=0, "Value cannot be zero");
        ValueMapping[msg.sender] = _value;
    }

    function getValue() public view returns (uint256) {
        require(ValueMapping[msg.sender] !=0, 'No value set for sender');
        return ValueMapping[msg.sender];
    }
    
}
