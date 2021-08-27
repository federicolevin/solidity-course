pragma solidity ^0.8.7;

contract TestContract {
    uint stateVariable = 23;
    uint[] randomNumbers = [2, 5, 10, 25, 65];

    function double(uint x) public pure checkOdd(x) returns (uint) {
        return x * 2;
    }

    modifier checkOdd(uint x) {
        require(x % 2 == 0);
        _; // acá es donde se va a ejecutar la función "modificada".
    }

    function findPosition(uint numberToFind) public view returns (uint) {
        for (uint i = 0; i < randomNumbers.length; i++) {
            if (randomNumbers[i] == numberToFind) {
                return i;
            }   
        }
        return 0;
    }
}