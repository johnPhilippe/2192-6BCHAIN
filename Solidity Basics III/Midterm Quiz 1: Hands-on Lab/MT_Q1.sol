// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SalaryCalculator {
    address public owner;
    uint256 public age;
    uint256 public hrsWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    modifier validRate(uint256 _hourlyRate) {
        require(_hourlyRate > 0, "Hourly rate must be greater than zero");
        _;
    }

    modifier validHoursWorked(uint256 _hrsWorked) {
        require(_hrsWorked > 0, "Hours worked must be greater than zero");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint256 _age) public {
        age = _age;
    }

    function setHrsWorked(uint256 _hrsWorked) public validHoursWorked(_hrsWorked){
        hrsWorked = _hrsWorked;
    }

    function setHourlyRate(uint256 _hourlyRate) public validRate(_hourlyRate){
        hourlyRate = _hourlyRate;
    }

    function calculateTotSal() public onlyOwner {
        require(hourlyRate > 0 && hrsWorked > 0, "Hourly rate or hours worked is zero");
        totalSalary = hourlyRate * hrsWorked;

    }

}
