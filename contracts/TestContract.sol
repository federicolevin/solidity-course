pragma solidity ^0.8.7;

contract TestContract {
    uint stateVariable = 23;

    function double(uint x) public pure checkOdd(x) returns (uint) {
        return x * 2;
    }

    modifier checkOdd(uint x) {
        require(x % 2 == 0);
        _; // acá es donde se va a ejecutar la función "modificada".
    }
}