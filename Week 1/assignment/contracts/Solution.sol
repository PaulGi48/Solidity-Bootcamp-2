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

    uint256 public amount ;

    // receive() external payable {}
    function deposit(uint256 _amount) public payable {
    }
  
    //withdraw an amount
    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }


    // view your balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}


