// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract counter{
    uint256 private count;
    function getval(uint a) public {
        count=a;
    }
    function increment() public {
        count +=1;
    }
    function decrement() public {
        require(count>0,"count can not be negetive");
        count-=1;
    }
    function getcount() public view returns (uint256){
        return count;
    }
}