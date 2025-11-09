# Archive job applications administration

## User Story

As an administrator
I want to archive job applications
So that I can manage storage and maintain historical records.

## Description

This page allows administrators to archive all job applications in the application. The archiving process is handled asynchronously via a queue mechanism with workers.

## User Type

- Administrator

## Prerequisites

- Queue system must be implemented
- Archive storage location must be configured
- Email service must be configured

## Page Wireframe

![Archive Applications](../assets/archive-applications-admin.png)

## Business Rules

- Only administrators can access the archive functionality
- Archiving must preserve all associated files (CV, cover letters)
- Email notification must be sent upon completion
- Archiving process must be asynchronous to avoid blocking the UI

## Acceptance Criteria

1. When an administrator clicks on the Archive Applications button in the administration part of the application, he/she is redirected to the Archive Job Applications administration page.
1. The administrator must enter an email address where the archiving completion notification should be sent.
1. The email address field must be a valid email format. If that is not the case, the administrator will get an error message.
1. The email address field must have a value. If that is not the case, the administrator will get an error message.
1. The administrator can see a summary of how many job applications will be archived before initiating the process.
1. If there are no job applications to archive, the `Archive` button should be disabled and a message should be displayed: `There are no job applications to archive`.
1. The `Archive` button should be disabled if the email address field is invalid or empty.
1. When the administrator clicks the `Archive` button and all fields are valid, the archiving process is initiated and a job is added to the archiving queue.
1. After the archiving job is queued, the administrator should see a confirmation message: `Archiving process has been initiated. You will receive an email notification when the process is complete.`
1. After the archiving process is complete, the archiving worker should send a message to the email queue with the completion notification details.
1. The email notification should contain information about the archiving process, including the number of applications archived and the timestamp of completion.
1. If the archiving process fails, an error notification email should be sent to the specified email address with details about the failure.
1. The administrator should be able to view the status of ongoing archiving processes (if any) on the Archive Job Applications administration page.

## Technical Requirements

1. The archiving process should be handled by a dedicated worker that processes jobs from the archiving queue.
1. The archiving worker should archive all job applications (including associated CV and cover letter files) to a designated archive storage location.
1. A dedicated email worker should process the email queue and send an email notification to the specified email address when the archiving is complete.

## Error Scenarios

- Invalid email format → Show error message
- Empty email field → Show error message
- No applications to archive → Disable button, show message
- Archiving process failure → Send error notification email
- Queue system unavailable → Show error message to administrator

## Test Scenarios

1. Happy path: Administrator successfully archives all applications and receives email notification
2. Validation failure: Administrator enters invalid email, sees error message
3. Empty state: No applications to archive, button is disabled
4. Failure handling: Archiving process fails, error email is sent

## Related Stories

- [Job application administration](job-applications-admin.md)
- [Job application](job-application.md)
