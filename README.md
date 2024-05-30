# Hello World

This Solidity program is a simple "FunctionsErrors" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. Smart contract that implements the require(), assert() and revert() statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FunctionsErrors.sol). Copy and paste the following code into the file:

```javascript
pragma solidity 0.8.18;

contract FunctionsErrors {

  // public variables here
    string public bookShop = "MetaBook";
    uint public totalBorrowed = 0;
    uint public maximumBooks = 10;

    // mapping variable here
    mapping (address => uint) public borrowed;

    // lending function
    function lend (address _name, uint _value) public {

        // implementing a require() statement
        require(_name == msg.sender, "Only registered student can borrow books");

        // implementing a revert statement
        if (_value > maximumBooks) {
            revert("Maximum of books per student");
        } else {
            totalBorrowed += _value;
            borrowed[_name] += _value;
        }  
    }

    // return function
    function returned (address _name, uint _value) public {

        // implementing an assert() statement
        assert(borrowed[_name] >= _value);
        totalBorrowed -= _value;
        borrowed[_name] -= _value;
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
