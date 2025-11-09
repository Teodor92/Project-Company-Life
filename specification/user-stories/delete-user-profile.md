# Delete user profile

## User Story

As a logged-in user
I want to delete my profile
So that I can remove my account and all associated data from the system.

## Description

This page allows logged-in users to request deletion of their profile. The deletion process is handled asynchronously via a queue mechanism with workers.

## User Type

- Logged In

## Prerequisites

- User must be logged in
- Queue system must be implemented
- Email service must be configured

## Business Rules

- User must verify identity with password
- User must acknowledge permanent deletion
- Deletion is asynchronous and processed by a worker
- User is logged out immediately after request submission
- All user data must be permanently deleted including:
  - User account information
  - All job applications (including CV and cover letter files)
  - Any other user-related data

## Acceptance Criteria

1. When a logged-in user clicks on the Delete Profile button in their profile settings or account page, he/she is redirected to the Delete Profile page.
1. The user must confirm the deletion by entering their password to verify their identity.
1. The password field must have a value. If that is not the case, the user will get an error message.
1. The user must check a confirmation checkbox acknowledging that the deletion is permanent and cannot be undone.
1. The `Delete Profile` button should be disabled if the password field is empty or the confirmation checkbox is not checked.
1. If the user enters an incorrect password, he/she should receive an error message: `Invalid password. Please try again.`
1. When the user clicks the `Delete Profile` button and all fields are valid, the deletion request is initiated and a job is added to the profile deletion queue.
1. After the deletion job is queued, the user should see a confirmation message: `Your profile deletion request has been submitted. You will receive a confirmation email when the process is complete.`
1. The user should be logged out immediately after the deletion request is submitted.
1. After the deletion process is complete, the deletion worker should send a message to the email queue with the deletion confirmation details.
1. The confirmation email should contain information about the deletion, including the timestamp of deletion and confirmation that all user data has been permanently removed.
1. If the deletion process fails, an error notification email should be sent to the user's email address with details about the failure and instructions on how to contact support.
1. If the user is not logged in, he/she should not be able to access the Delete Profile page and should be redirected to the login page.
1. The user should be able to cancel the deletion request before submitting it by clicking a `Cancel` button, which redirects them back to their profile page.

## Technical Requirements

1. The deletion process should be handled by a dedicated worker that processes jobs from the profile deletion queue.
1. The deletion worker should delete the user's profile data, including:
    - User account information
    - All job applications submitted by the user (including associated CV and cover letter files)
    - Any other user-related data in the system
1. A dedicated email worker should process the email queue and send a confirmation email to the user's email address when the deletion is complete.

## Error Scenarios

- Empty password field → Show error message
- Incorrect password → Show error message: "Invalid password. Please try again."
- Confirmation checkbox not checked → Disable Delete Profile button
- User not logged in → Redirect to login page
- Deletion process failure → Send error notification email
- Queue system unavailable → Show error message to user

## Test Scenarios

1. Happy path: User successfully deletes profile and receives confirmation email
2. Validation failure: User enters incorrect password, sees error message
3. Cancellation: User cancels deletion request
4. Unauthorized access: Non-logged-in user tries to access page, redirected to login
5. Failure handling: Deletion process fails, error email is sent

## Related Stories

- [Login user](login-user.md)
- [Register new user](register-new-user.md)
- [Job application](job-application.md)
