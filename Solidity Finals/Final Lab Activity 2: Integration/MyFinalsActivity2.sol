// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MyFinalsActivity2{
    address payable public owner;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public creationTime;
    uint256 public remainingEth;

    event EtherReceived(address indexed from, uint256 amount);
    event EtherSent(address indexed to, uint256 amount);
    event ContractDestroyed(address indexed recipient, uint256 amount);
    
    modifier onlyOwner(){
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    constructor(){
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);
        remainingEth += msg.value;
     }

     function getBalance() public view returns(uint256) {
        return address(this).balance;
     }

     function sendEther(address payable _to, uint256 _amount) public onlyOwner{
        require(_amount <= remainingEth, "Insufficient Balance");
        require(_to != address(0), "Invalid recipient address");
        _to.transfer(_amount);
        emit EtherSent(_to, _amount);
        remainingEth -= _amount;

        if (remainingEth == 0){
            selfdestruct(owner);
            emit ContractDestroyed(owner, address(this).balance);
        }
     }

     function receiveAndEmit() external payable {
        emit EtherReceived(msg.sender, msg.value);
        remainingEth += msg.value;
    }
}

// This Solidity code enables ether transactions, which include receiving ether, sending ether to designated recipients, and terminating the contract.
