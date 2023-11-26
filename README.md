# Education Platform Smart Contract

## Overview

The Education Platform Smart Contract is a decentralized application (DApp) built on the Ethereum blockchain using the Solidity programming language. This smart contract facilitates the management of student enrollments and the accrual of credits within an education platform.

## Features

### 1. Enrollment

- Students can enroll in the education platform by calling the `enroll` function.
- The enrollment status is tracked internally to prevent duplicate registrations.

### 2. Credit Earning

- Students can earn credits by calling the `earnCredits` function, providing a specified number of credit points.
- The contract ensures that only registered students can earn credits, and the provided credit points are within a valid range (1-40).

### 3. Event Notifications

- Two events, `Enrollment` and `CreditsEarned`, are emitted to notify external applications or users about enrollment and credit-earning activities.

### 4. Certificate Eligibility Check

- The `checkEligibilityForCertificate` function allows anyone to check whether a student is eligible for a certificate based on their accumulated credit points.
- A student is eligible for a certificate if they have earned the maximum possible credit points (40).

## Contract Deployment

- The contract is deployed with an initial platform administrator, who is the address that deployed the contract.
- The platform administrator has the authority to manage the contract and can enroll as a student as well.

## Usage

1. **Enrollment:**
   - Students call the `enroll` function to enroll in the education platform.
   - If already enrolled, an error is returned.

2. **Credit Earning:**
   - Enrolled students call the `earnCredits` function, providing the number of credit points earned.
   - The provided credit points must be within the valid range, and the student must be enrolled.

3. **Certificate Eligibility Check:**
   - Anyone can call the `checkEligibilityForCertificate` function, providing a number of credit points to check eligibility.
   - The function returns true if the student is eligible for a certificate (40 credit points) and reverts with an error message otherwise.

## Security Considerations

- The contract utilizes the `require` statement for input validation, ensuring that only valid actions are permitted.
- The `assert` statement is used for internal consistency checks.

## License

This smart contract is released under the MIT License. Please see the [LICENSE](./LICENSE) file for more details.

## Author

- [praveen]
- [pp0555319@gmail.com]
  
