pragma solidity ^0.4.11;
// We have to specify what version of compiler this code will compile with

contract Voting {
  
  mapping (bytes16 => bytes16) public populationHistory;

  function personExistence(bytes16 key, bytes16 info) returns (bool) {
    if (populationHistory[key].length == 0) {
        return false;
    } else {
        addPerson(key,info);
    }    
  }

  function addPerson(bytes16 key, bytes16 info) returns (bool) {
    populationHistory[key] = info;
  }

  function getHistory(bytes16 key) returns (bytes16[] sList) {

  }
}