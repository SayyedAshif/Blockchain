// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract cal{
    uint public num1;
    uint public num2;
    uint public total;
    address public addr; 
    mapping (address=>bool) public addradd;
    mapping (address=>bool) public addrsub;  
    function getVal(uint a,uint b) public{
        num1=a;
        num2=b;
    } 
    function addaddr(address x) public {
        addradd [x]=true;
        total=num1+num2;
    }
    function subaddr(address y) public {
        addrsub [y]=true;
        total=num1-num2;
    }
}
