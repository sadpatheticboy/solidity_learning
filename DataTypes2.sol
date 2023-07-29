// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataTypes2 {
    // mapping
    mapping (address => uint) public payments; // storage

    // address
    address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // storage

    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;
    }
    
    function transerTo(address targetAddr, uint amount) public {
        address payable _to = payable(targetAddr);
        _to.transfer(amount);
    }
    
    function getBalance(address targetAddr) public  view returns(uint){
        return targetAddr.balance;
    }

    // string
    string public myStr = "test"; // storage

    function demo(string memory newValueStr) public {
        string memory myTempStr = "temp"; 
        myStr = newValueStr;
    }
}  