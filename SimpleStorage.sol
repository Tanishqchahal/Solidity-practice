// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating the version

contract SimpleStorage{
    // bool hasFavoriteNumber = true;
    // Basic Types: boolean, uint , int, address, bytes
    // string favoriteNumberInText = "Eighty eight";
    // int256 favoriteInt = -88;
    // address myAddress = 0xC2cE398F7C2115fbfe5EA80b3Fe92630092CeD12;
    // bytes32 favoriteBytes32 = "cat";    
    uint256 public favoriteNumber; //by default initialised to 0, by default visibilty is internal

    function store(uint256 _fav) public {
        favoriteNumber = _fav;
    }
}