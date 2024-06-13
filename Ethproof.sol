// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
  //public variables here
  string public tokenName = "METACRAFT";
  string public tokenAbbrv = "MTAC";
  uint public totalSupply = 0;

  //mapping variables here
  mapping(address => uint) public balances;

  //mint function
  function mint(address add, uint _value) public {
    totalSupply += _value;
    balances[add] += _value;
  }

  //burn function
  function burn(address add, uint _value) public {
    if(balances[add] >= _value){
      totalSupply -= _value;
      balances[add] -= _value;
    }
  }
}
