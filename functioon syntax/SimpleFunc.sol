// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleFunc {
    // when we create a public state variable we do not need to create a getter Function
    uint256 public favroiteNumber; // if we not set a value it will be 0

    uint256 number = 9;

    // in setter function we change a state variable the gas fee also required
    function store(uint256 favNum) public {
        favroiteNumber = favNum;
        retrive();
    }

    // when we use state variable for read only purpose we use mainly (view) keyword
    function retrive() public view returns (uint256) {
        return number;
    }

    //The pure functions do not read or modify the state variables, which returns the values only using the parameters passed to the function or local variables present in it
    function retrive2()
        public
        pure
        returns (
            uint256 sum,
            uint256 product,
            uint256 result
        )
    {
        uint256 num1 = 45;
        uint256 num2 = 33;

        sum = num1 + num2;
        product = num1 * num2;
        result = sum % product;
    }

    // if we want to update state variable we not use [view and pure] keyword
}
