# List users administration

## User Story

As an administrator
I want to view all registered users
So that I can monitor user activity and manage the user base.

## Description

This page allows administrators to view all the registered users in the application.

## User Type

- Administrator

## Prerequisites

- User must be logged in as administrator
- Users database table must exist

## Page Wireframe

![Users Administration](../assets/users-admin.png)

## Business Rules

- Only administrators can access this page
- Paging is shown when there are more than 10 users
- All columns are sortable
- Each user displays: unique database id, email, registration date, number of job applications

## Acceptance Criteria

1. When an administrator clicks on the Users button in the administration part of the application, he/she is redirected to the Users administration page.
1. All the users are displayed in a grid, and each user must have a unique database id, his/her email, when he/she was registered and how many jobs he/she has applied for.
1. If there are more than 10 users in the application, a paging mechanism is shown.
1. The administrator can sort by each column.
1. If there are no users in the application, a `No data available` message should be present.

## Error Scenarios

- No users available → Show "No data available" message
- Network error during load → Show error message

## Test Scenarios

1. Happy path: Administrator views all users successfully
2. Empty state: No users, shows appropriate message
3. Paging: More than 10 users, paging is displayed
4. Sorting: Administrator sorts by different columns
5. User data: All required user information is displayed

## Related Stories

- [Register new user](register-new-user.md)
- [Login user](login-user.md)
- [Job application](job-application.md)
