// Upgrade the ether smart allet smart contract to allow ...
// individuals withdraw any amount of etherereum ... they deposited in the smart contract.

pragma solidity ^0.8.15;

contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // receive() external payable {}

    function deposit() external payable {
        require(msg.sender);
        payable ()
        
    }

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}