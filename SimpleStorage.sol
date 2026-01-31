// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating the version

contract SimpleStorage{
    // bool hasFavoriteNumber = true;
    // Basic Types: boolean, uint , int, address, bytes
    // string favoriteNumberInText = "Eighty eight";
    // int256 favoriteInt = -88;
    // address myAddress = 0xC2cE398F7C2115fbfe5EA80b3Fe92630092CeD12;
    // bytes32 favoriteBytes32 = "cat";    
    uint256 myfavoriteNumber; //by default initialised to 0, by default visibilty is internal
    
    // Lists
    // uint256[] listOffFavoriteNumbers;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // Person public myFriend = Person(6, "Harshit");

    // Person public Harshit = Person({favoriteNumber: 6, name:"Harshit"});
    // Person public Hardik = Person({favoriteNumber: 7, name:"Hardik"});
    // Person public Megh = Person({favoriteNumber: 8, name:"Megh"});

    Person[] public listOfPeople; //dynamic array
    // Person[n] public listOfPeople; //static array of size n

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _fav) public virtual {
        myfavoriteNumber = _fav;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }

    //calldata, memory, storage
    //calldata is temporary variables that cannot be modified.
    //memory is temporary variables that can be modified.
    //storage is permanent variables that can be modified.
    function addPerson(uint256 _fav, string memory _name) public{
        listOfPeople.push(Person(_fav, _name));
        nameToFavoriteNumber[_name] = _fav;
    }
}