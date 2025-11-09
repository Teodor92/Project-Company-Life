# Create/edit job ad administration

## User Story

As an administrator
I want to create or edit job ads
So that I can manage job postings for the company.

## Description

This page allows administrators to create or edit a job ad.

**Note:** If you wish you can create this form as a modal and not as a separate page.

## User Type

- Administrator

## Prerequisites

- User must be logged in as administrator
- Job ads administration page must exist

## Page Wireframe

![Create Job Ad](../assets/create-job-ad.png)

## Business Rules

- Title must be between 4 and 256 characters
- Description must be between 4 and 16384 characters
- WYSIWYG editor must be available for description
- Job categories are predefined: IT, Marketing, Sales, Operations, Other
- Status can be Active or Inactive
- CreatedAt timestamp is set automatically on creation

## Validation Rules

- Title: 4-256 characters (required)
- Description: 4-16384 characters (required)
- Job category: Must be one of IT, Marketing, Sales, Operations, Other (required)
- Status: Must be Active or Inactive (required)

## Acceptance Criteria

1. When an administrator clicks on the `Create` button in the Job ad administration he/she is redirected to the Create Job ad administration page.
1. The administrator must enter a title with a minimum character length 4 and maximum length 256.
1. The administrator must enter a description with a minimum character length 4 and maximum character length 16384.
1. For the description a WYSIWYG editor must be available for the administrator.
1. The administrator must select the job category for this ad - the available predefined categories are - IT, Marketing, Sales, Operations, Other.
1. The administrator must select the status of this ad - Active or Inactive.
1. The `Create` button must be disabled if there are any errors in the form.
1. When the administrator clicks the `Create` button and all the form fields are valid, a new job ad is created, which has its CreatedAt value set to the moment of the ad creation.
1. After the ad is created the administrator is redirected to the Job ads list administration page.

## Error Scenarios

- Title too short (< 4 characters) → Show error message
- Title too long (> 256 characters) → Show error message
- Description too short (< 4 characters) → Show error message
- Description too long (> 16384 characters) → Show error message
- Invalid form fields → Disable Create button
- Network error during save → Show error message

## Test Scenarios

1. Happy path: Administrator creates job ad successfully
2. Validation failure: Administrator enters invalid data, sees error messages
3. Edit mode: Administrator edits existing job ad
4. Form validation: Button disabled when form is invalid

## Related Stories

- [Job ads administration](job-ads-admin.md)
- [Job listing](job-listing.md)
- [Job ad details](job-ad-details.md)
