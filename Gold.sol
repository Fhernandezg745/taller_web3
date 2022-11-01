// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Gold {
    uint256 goldAmount;
    //funciones getter
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    //eventos
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    //funciones setter

    //transfer, primero require de que el balance del sender sea mayor o igual al valor que esta enviando
    //Compensar el valor de transferencia
    function transfer(address _to, uint256 _value) public returns (bool success){
        require(balanceOf[msg.sender]>= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender,_to,_value);
        return true;
    }


    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success){

    }
    function approve(address _spender, uint256 _value) public returns (bool success){
        
    }
    function allowance(address _owner, address _spender) public view returns (uint256 remaining){

    }






}