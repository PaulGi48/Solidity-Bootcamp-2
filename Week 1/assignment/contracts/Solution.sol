// Upgrade the ether smart allet smart contract to allow ...
// individuals withdraw any amount of etherereum ... they deposited in the smart contract.


// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract EtherWallet {
    address payable owner;

        modifier ownerOnly() {
        require(msg.sender == owner, "only the owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
    }

    // receive() external payable {}
    function deposit() external payable {
    }

    //withdraw an amount
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}


