pragma solidity ^0.8.7;

contract TestContract {
    uint stateVariable = 23;

    function double(uint x) public pure returns (uint) {
        return x * 2;
    }
}