// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract dev3pack {
    struct User {
        string name;
        uint age;
        string email;
        uint registrationTime;
        bool exists;
    }
    mapping(address => User) public users;
    
    // Register new user
    function register(string memory _name, uint _age, string memory _email) public {
        require(users[msg.sender].exists == false, "User already registered");
        // Create new user
        users[msg.sender] = User({
            name: _name,
            age: _age,
            email: _email,
            registrationTime: block.timestamp,
            exists: true
        });
    }
    
    // Update user profile
    function updateProfile(string memory _name, uint _age, string memory _email) public {
        require(users[msg.sender].exists == true, "User not registered");
        users[msg.sender].name = _name;
        users[msg.sender].age = _age;
        users[msg.sender].email = _email;
    }
    
    // Get user profile
    function getProfile() public view returns (string memory, uint, string memory, uint) {
        require(users[msg.sender].exists == true, "User not registered");
        return (
            users[msg.sender].name,
            users[msg.sender].age,
            users[msg.sender].email,
            users[msg.sender].registrationTime
        );
    }
}