// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EducationPlatform {
    address public platformAdmin;
    mapping(address => bool) private hasRegistered;
    mapping(address => uint) private earnedCredits;

    event Enrollment(address indexed student);
    event CreditsEarned(address indexed student, uint credits);

    constructor() {
        platformAdmin = msg.sender;
    }

    function enroll() public {
        require(!hasRegistered[msg.sender], "Already enrolled");
        assert(!hasRegistered[msg.sender]);

        hasRegistered[msg.sender] = true;
        emit Enrollment(msg.sender);
    }

    function earnCredits(uint creditPoints) public {
        require(hasRegistered[msg.sender], "Not registered");
        require(creditPoints > 0 && creditPoints <= 40, "Invalid credit points (1-40)");

        earnedCredits[msg.sender] += creditPoints;
        emit CreditsEarned(msg.sender, creditPoints);
    }

    function checkEligibilityForCertificate(uint creditPointsToCheck) public pure returns (bool) {
        require(creditPointsToCheck > 0, "Enter positive credit points");

        if (creditPointsToCheck == 40) {
            return true;
        } else {
            revert("Not eligible (40 credit points)");
        }
    }
}
