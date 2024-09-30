// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
    - @title simple token.
    - @dev A basic token contract that assign the total suply to the contract deploy.
*/

contract SimpleToken{
    string public name;
    string public symbol;
    uint public totalSuply;
    address public owner;

    mapping(address => uint) public balances;

     /**
     - @dev Initializes the contract with the token details and assigns all tokens to the deployer.
     - @param _name The name of the token.
     - @param _symbol The symbol of the token.
     - @param _initialSupply The total supply of tokens to be minted at deployment.
     */
    
    constructor(string memory _name, string memory _symbol, uint _initialSupply){
        require(_initialSupply > 0,"initial suply must be greater than 0");

        name = _name;
        symbol = _symbol;
        totalSuply = _initialSupply;
        owner = msg.sender;

        // assign the initial supply to the owner.
        balances[owner] = _initialSupply;
    }

     /**
     * @notice Returns the balance of a specific address.
     * @param account The address whose balance is to be retrieved.
     * @return The balance of the specified account.
     */

    function balanceOf(address account) external view returns(uint){
        return balances[account];
    }
}