//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.1;

// Importing openZepplin library contracts for implementation 

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// My simple token contract inheriting the ERC20 implementation

contract MySimpleToken is ERC20, Ownable {

// My constructor calling the ERC20 token

    constructor() ERC20("mysimpletoken","STKN") { 
         _mint( msg.sender, 10000); 
     }

     function mint(address transfer, uint256 amount) external  onlyOwner{
         _mint(transfer, amount);
 }
     function remove (address, uint256 amount) external onlyOwner{
         _remove (msg.sender, amount);

 }
}