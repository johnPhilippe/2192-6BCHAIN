// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Event{
    event Log(address indexed sender, string meessage);
    event AnotherLog();

    function test() public  {
        emit Log(msg.sender, "Hellow World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}
