# Job application

## User Story

As a logged-in user
I want to apply for a job position
So that I can submit my application to the company.

## Description

This page allows a logged in user to apply for a job ad.

## User Type

- Logged In

## Prerequisites

- User must be logged in
- Job ad must exist and be active
- Job ad details page must exist

## Page Wireframe

![Job Application](../assets/job-apply.png)

## Business Rules

- First name and last name are required
- First name and last name must contain only alphabetical characters
- First name and last name must be between 3 and 100 characters
- Additional comment is optional (max 1024 characters)
- CV upload is required (max 16 MB, formats: .pdf, .docx, .doc)
- Cover letter upload is optional (max 16 MB, formats: .pdf, .docx, .doc)
- Submit button is disabled if form is invalid

## Validation Rules

- First name: 3-100 characters, alphabetical only (required)
- Last name: 3-100 characters, alphabetical only (required)
- Additional comment: Max 1024 characters (optional)
- CV: Max 16 MB, formats: .pdf, .docx, .doc (required)
- Cover letter: Max 16 MB, formats: .pdf, .docx, .doc (optional)

## Acceptance Criteria

1. When a user clicks on the Apply button in a job ad and if he/she is logged in, he/she is redirected to the Job application page.
1. The user MUST enter their first name.
1. A valid first name is considered a string, containing only alphabetical characters, and that has a length between 3 and 100 characters.
1. The user MUST enter a last name.
1. A valid last name is considered a string, containing only alphabetical characters, and that has a length between 3 and 100 characters.
1. The user MAY enter an additional comment.
1. The additional comment must be at most - 1024 symbols.
1. The user MUST upload their CV.
1. The maximum size of a CV document is 16 MB.
1. The accepted file formats for CV are `.pdf`,`.docx`, `.doc`
1. The user MAY upload a cover letter.
1. The maximum size of a cover letter document is 16 MB.
1. The accepted file formats for cover letter are `.pdf`,`.docx`, `.doc`
1. If the user does not meet any of the required criteria and tries to submit the job application - an error message is displayed.
1. The `Submit` button should be disabled if there are any invalid fields in the form.

## Error Scenarios

- First name too short (< 3 characters) → Show error message
- First name too long (> 100 characters) → Show error message
- First name contains non-alphabetical characters → Show error message
- Last name too short (< 3 characters) → Show error message
- Last name too long (> 100 characters) → Show error message
- Last name contains non-alphabetical characters → Show error message
- Comment too long (> 1024 characters) → Show error message
- CV not uploaded → Show error message
- CV too large (> 16 MB) → Show error message
- CV invalid format → Show error message
- Cover letter too large (> 16 MB) → Show error message
- Cover letter invalid format → Show error message
- Invalid form fields → Disable Submit button
- Network error during submission → Show error message

## Test Scenarios

1. Happy path: User successfully submits job application with all required fields
2. Validation failure: User enters invalid data, sees error messages
3. Optional fields: User submits application without cover letter
4. File validation: User tries to upload invalid file format or size
5. Form validation: Submit button disabled when form is invalid

## Related Stories

- [Job ad details](job-ad-details.md)
- [Job application administration](job-applications-admin.md)
- [Login user](login-user.md)
