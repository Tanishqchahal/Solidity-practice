// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    //type visiblity name
    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContract = new SimpleStorage();
        listOfSimpleStorage.push(simpleStorageContract);
    }

    function sfstore(uint256 _simpleStorageIndex, uint256 _newFavNum) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        mySimpleStorage.store(_newFavNum);
        //listOfSimpleStorage[_simpleStorageIndex].store(_newFavNum);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorage[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
        //return listOfSimpleStorage[_simpleStorageIndex].retrieve();

    }
}