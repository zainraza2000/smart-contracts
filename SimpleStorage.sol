// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

contract SimpleStorage {
    uint64 favNumber = 0;
    function nigga(uint64 _store) public{
        favNumber = _store;
    }
    struct People {
        uint256 number;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToNumber;

    function addPeople(string memory _name, uint256 _number) public{
        people.push(People({number: _number,name: _name}));
        nameToNumber[_name] = _number;
    }
}+