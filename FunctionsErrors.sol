// SPDX-License-Identifier: MIT
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
