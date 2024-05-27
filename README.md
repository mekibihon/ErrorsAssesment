# Hello World

This Solidity program is a simple "FunctionsErrors" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. Smart contract that implements the require(), assert() and revert() statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
pragma solidity 0.8.18;

contract FunctionsErrors {

  // public variables here
    string public tokenName = "METACRAFT";
    string public tokenAbbrv = "MTC";
    uint public totalSupply = 0;
    uint public minimumMintable = 100;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public {

        // implementing a require() statement
        require(_address == msg.sender, "Only the token owner can mint MTC tokens");

        // implementing a revert statement
        if (_value < minimumMintable) {
            revert("Minimum amount of MTC token mintable must be matched or exceeded");
        } else {
            totalSupply += _value;
            balances[_address] += _value;
        }  
    }

    // burn function
    function burn (address _address, uint _value) public {

        // implementing an assert() statement
        assert(balances[_address] >= _value);
        totalSupply -= _value;
        balances[_address] -= _value;
      }

}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile FunctionsErrors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "FunctionsErrors" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it.

## Authors

NAME: Mekael Bustos


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
