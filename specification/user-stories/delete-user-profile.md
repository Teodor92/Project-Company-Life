# Delete user profile

This page allows logged-in users to request deletion of their profile. The deletion process is handled asynchronously via a queue mechanism with workers.

## Acceptance criteria

1. When a logged-in user clicks on the Delete Profile button in their profile settings or account page, he/she is redirected to the Delete Profile page.
1. The user must confirm the deletion by entering their password to verify their identity.
1. The password field must have a value. If that is not the case, the user will get an error message.
1. The user must check a confirmation checkbox acknowledging that the deletion is permanent and cannot be undone.
1. The `Delete Profile` button should be disabled if the password field is empty or the confirmation checkbox is not checked.
1. If the user enters an incorrect password, he/she should receive an error message: `Invalid password. Please try again.`
1. When the user clicks the `Delete Profile` button and all fields are valid, the deletion request is initiated and a job is added to the profile deletion queue.
1. After the deletion job is queued, the user should see a confirmation message: `Your profile deletion request has been submitted. You will receive a confirmation email when the process is complete.`
1. The user should be logged out immediately after the deletion request is submitted.
1. The deletion process should be handled by a dedicated worker that processes jobs from the profile deletion queue.
1. The deletion worker should delete the user's profile data, including:
    - User account information
    - All job applications submitted by the user (including associated CV and cover letter files)
    - Any other user-related data in the system
1. After the deletion process is complete, the deletion worker should send a message to the email queue with the deletion confirmation details.
1. A dedicated email worker should process the email queue and send a confirmation email to the user's email address when the deletion is complete.
1. The confirmation email should contain information about the deletion, including the timestamp of deletion and confirmation that all user data has been permanently removed.
1. If the deletion process fails, an error notification email should be sent to the user's email address with details about the failure and instructions on how to contact support.
1. If the user is not logged in, he/she should not be able to access the Delete Profile page and should be redirected to the login page.
1. The user should be able to cancel the deletion request before submitting it by clicking a `Cancel` button, which redirects them back to their profile page.
