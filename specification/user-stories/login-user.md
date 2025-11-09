# Login user

## User Story

As a user
I want to log in to my account
So that I can access features that require authentication.

## Description

This page allows login of an existing user in the application.

## User Type

- Anonymous

## Prerequisites

- User must be registered in the system
- Navigation must include Login button

## Page Wireframe

![Login Page](../assets/login.png)

## Business Rules

- Email must be valid format
- Password is required
- Login button is disabled if form is invalid
- Invalid credentials show error message
- Successful login redirects to home page
- "Remember me" checkbox keeps user logged in after browser close

## Validation Rules

- Email: Must be valid email format (required)
- Password: Must have a value (required)

## Acceptance Criteria

1. When a user clicks on the Login button in the navigation he/she should be redirected to the Login user page.
1. If the user enters an invalid email, there should be an error message. (Example of invalid emails: aaaaaa, 99999, ____).
1. The password field must have a value before the form is submitted.
1. The `Login` button should be disabled if there are invalid fields in the login form.
1. If the user clicks `Login` button, all the fields are valid, BUT his/her login information is invalid, he/she should be presented with an error message.
1. If the user clicks `Login` button, all the fields are valid and his/her login information is valid, he/she should be redirected to the home page and login/register buttons in the nav bar should be replaced with `Hello {email}` message.
1. If the user checks the `Remember me?` checkbox, he/she should remain logged in even if he closes the browser.

## Error Scenarios

- Invalid email format → Show error message
- Empty password → Show error message
- Invalid credentials → Show error message
- Network error during login → Show error message
- Account locked/suspended → Show appropriate error message

## Test Scenarios

1. Happy path: User successfully logs in and is redirected to home page
2. Validation failure: User enters invalid email, sees error message
3. Invalid credentials: User enters wrong password, sees error message
4. Remember me: User checks remember me, stays logged in after browser close
5. Form validation: Login button disabled when form is invalid

## Related Stories

- [Register new user](register-new-user.md)
- [Access level](access-level.md)
