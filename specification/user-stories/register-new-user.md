# Register new user

## User Story

As a new user
I want to create an account
So that I can access features that require authentication.

## Description

This page allows registration of a new user in the application.

## User Type

- Anonymous

## Prerequisites

- User must not be logged in
- Navigation must include Register button

## Page Wireframe

![Register Page](../assets/register.png)

## Business Rules

- Email must be valid format and unique
- Email must be max 1024 characters
- Password must match confirm password
- Password must have minimum 8 characters, at least 1 uppercase letter, 1 digit, and 1 special symbol
- Password must be max 256 characters
- Register button is disabled if form is invalid
- Successful registration automatically logs in the user
- Already logged-in users cannot access this page

## Validation Rules

- Email: Valid email format, max 1024 characters, must be unique (required)
- Password: 8-256 characters, at least 1 uppercase, 1 digit, 1 special symbol (required)
- Confirm password: Must match password (required)

## Acceptance Criteria

1. When a user clicks on the Register button in the navigation he/she should be redirected to the Register user page.
1. If the user enters an invalid email, there should be an error message. (Example of invalid emails: aaaaaa, 99999, ____).
1. If the email already exists in the database the user should receive an error message.
1. If the user enters different values the `Password` and `Confirm password` fields, he/she should receive an error.
1. If the user enters a password that does not have a minimum of 8 characters, at least 1 uppercase letter, 1 digit, and 1 special symbol, he/she should receive an error.
1. If the user enters more than 256 symbols in the password field he/she should receive an error.
1. If the user enters an email, that has more than 1024 characters, he/she should receive an error.
1. The `Register` button, should be inactive, before every field in the register form is valid.
1. If the user clicks the Register button when all the fields are valid, the new user should be created, the user should be logged in and redirected to the home page and login/register buttons in the nav bar should be replaced with `Hello {email}` message.
1. If the user is already signed in, he should not be able to access the Register user page.

## Error Scenarios

- Invalid email format → Show error message
- Email too long (> 1024 characters) → Show error message
- Email already exists → Show error message
- Password too short (< 8 characters) → Show error message
- Password too long (> 256 characters) → Show error message
- Password missing uppercase letter → Show error message
- Password missing digit → Show error message
- Password missing special symbol → Show error message
- Passwords do not match → Show error message
- Invalid form fields → Disable Register button
- Network error during registration → Show error message
- User already logged in → Redirect or show message

## Test Scenarios

1. Happy path: User successfully registers and is automatically logged in
2. Validation failure: User enters invalid data, sees error messages
3. Email exists: User tries to register with existing email, sees error message
4. Password mismatch: User enters different passwords, sees error message
5. Password requirements: User enters password missing requirements, sees error messages
6. Form validation: Register button disabled when form is invalid
7. Already logged in: Logged-in user tries to access page, redirected or blocked

## Related Stories

- [Login user](login-user.md)
- [Access level](access-level.md)
