// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract counter{
    uint public count;
    address public addri=0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
    address public addrd=0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        function getval(uint a) public {
        count=a;
    }
    function increment() public {
        require(msg.sender==addri,"invalid");
        count +=1;
        addri=msg.sender;
    }
    function decrement() public {
        require(msg.sender==addrd,"invalid");
        count-=1;
        addrd=msg.sender;
    }
}