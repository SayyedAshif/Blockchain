// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract cal{
    uint num1;
    uint num2;
    function getval(uint a, uint b) public {
        num1=a;
        num2=b;
    }
    function add() view public returns (uint){
    return num1+num2;
    }
    function sub(uint num3,uint num4) pure public returns (uint){
        return num3-num4;
    }
    function mul(uint num3,uint num4) pure public returns (uint){
        return num3*num4;
    }
    function div(uint num3,uint num4) pure public returns (uint){
        return num3/num4;
    }
}