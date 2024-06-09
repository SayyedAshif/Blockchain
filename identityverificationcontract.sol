
// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract IdentityVerification {
    struct Identity {
        string name;
        string email;
        bool isVerified;
    }

    address public admin;
    mapping(address => Identity) public identities;

    event IdentityRegistered(address indexed user, string name, string email);
    event IdentityVerified(address indexed user);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function registerIdentity(string memory _name, string memory _email) public {
        require(bytes(_name).length > 0, "Name is required");
        require(bytes(_email).length > 0, "Email is required");
        identities[msg.sender] = Identity(_name, _email, false);
        emit IdentityRegistered(msg.sender, _name, _email);
    }

    function verifyIdentity(address _user) public onlyAdmin {
        require(bytes(identities[_user].name).length > 0, "User is not registered");
        identities[_user].isVerified = true;
        emit IdentityVerified(_user);
    }

    function isIdentityVerified(address _user) public view returns (bool) {
        return identities[_user].isVerified;
    }

    function getIdentity(address _user) public view returns (string memory name, string memory email, bool isVerified) {
        Identity storage identity = identities[_user];
        return (identity.name, identity.email, identity.isVerified);
    }
}