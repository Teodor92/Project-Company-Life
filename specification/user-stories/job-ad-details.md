# Job ad details

## User Story

As a user
I want to view detailed information about a job ad
So that I can decide whether to apply for the position.

## Description

This page gives the user more details about a job ad and allows him/her to apply for that position.

## User Type

- Anonymous
- Logged In
- Administrator

## Prerequisites

- Job ads must exist in the system
- Job listing page must exist

## Page Wireframe

![Job Ad Details](../assets/job-ad-details.png)

## Business Rules

- All users can view active job ads
- Only logged-in users can apply for jobs
- Anonymous users are redirected to login when trying to apply
- Regular users cannot view inactive job ads
- Administrators can view inactive job ads
- Administrators have additional "Show all applications" button

## Acceptance Criteria

1. When a user clicks on a job ad, he/she should be redirected to the Job ad details page.
1. The user should see the Job title when the ad was created and the detailed description of the ad.
1. The user should be able to click the apply button.
1. After clicking on the apply button if the user is logged in, he/she should be redirected to the Job application page.
1. After clicking on the apply button if the user is NOT logged in, he/she should be redirected to the login page. After the authentication process is complete, he/she should be redirected to the job application page.
1. If the job ad that the user is trying to access is inactive, he should be redirected to the Home page.
1. If an administrator is trying to access an inactive job ad, this should be possible.
1. If the user is an administrator, he has an additional button `Show all applications`, that redirects him to the view job applications administration.

## Error Scenarios

- Inactive job ad (regular user) → Redirect to home page
- Inactive job ad (administrator) → Allow access
- User not logged in when applying → Redirect to login, then back to application page
- Job ad not found → Show error message or redirect to job listing

## Test Scenarios

1. Happy path: User views job ad details and applies successfully
2. Anonymous user applies: Redirected to login, then to application page
3. Inactive job ad (regular user): Redirected to home page
4. Inactive job ad (administrator): Can view and see applications
5. Administrator view: Shows "Show all applications" button

## Related Stories

- [Job listing](job-listing.md)
- [Job application](job-application.md)
- [Job application administration](job-applications-admin.md)
- [Login user](login-user.md)
