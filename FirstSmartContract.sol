// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract FirstContract {
 
    uint256 number = 0;
    string[] names;
    mapping (string => uint) public phoneNumbers;
 
 
    function changeNumber(uint256 _num) public {
        number += _num;
    }
 
 
    function getNumber() public view returns (uint256){
        return number;
    }
    
    function getNumberMultiplied(uint _num) public view returns (uint) {
        return number * _num;
    }
    
    function addNumbers(uint _num1, uint _num2) public {
        number = _num1+_num2;
    }
    
    function addNames(string memory _name) public {
        names.push(_name);
    }
    
    function getName(uint _index) public view returns (string memory) {
        return names[_index];
    }
    
    function addMobileNumber(string memory _name, uint _mobileNumber) public {
        phoneNumbers[_name] = _mobileNumber;
    }
    
    function getMobileNumber(string memory _name) view public returns (uint) {
        return phoneNumbers[_name];
    }
    
    function getNamesLength() view public returns (uint) {
        return names.length;
    }
    
    function getNames() view public returns (string[] memory) {
        return names;
    }
}
