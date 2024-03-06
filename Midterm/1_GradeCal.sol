// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract GradeContract {
// Variables
address public owner;
string public studentName;
uint256 public prelimGrade;
uint256 public midtermGrade;
uint256 public finalGrade;
enum GradeStatus { Pass, Fail }
GradeStatus public gradeStatus;

// Modifiers
modifier onlyOwner() {
    require(msg.sender == owner, "Only contract owner can call this function");
    _;
}

modifier validGrade(uint256 grade) {
    require(grade >= 0 && grade <= 100, "Invalid grade. Grade must be between 0 and 100");
    _;
}

// Events
event GradeComputed(string studentName, GradeStatus gradeStatus);

// Constructor
constructor() {
    owner = msg.sender;
}

// Functions
function setName(string calldata name) external onlyOwner {
    studentName = name;
}

function setPrelimGrade(uint256 grade) external onlyOwner validGrade(grade) {
    prelimGrade = grade;
}

function setMidtermGrade(uint256 grade) external onlyOwner validGrade(grade) {
    midtermGrade = grade;
}

function setFinalGrade(uint256 grade) external onlyOwner validGrade(grade) {
    finalGrade = grade;
}

function calculateGrade() external onlyOwner {
    uint256 averageGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
    if (averageGrade >= 50) {
    gradeStatus = GradeStatus.Pass;
    } else {
    gradeStatus = GradeStatus.Fail;
    }
    emit GradeComputed(studentName, gradeStatus);
    }
}