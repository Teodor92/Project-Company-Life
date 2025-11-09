# List job ads administration

## User Story

As an administrator
I want to view, create, edit, and delete job ads
So that I can manage job postings for the company.

## Description

This page allows administrators to view all the job ads in the application, add new ones and delete/edit existing ones.

## User Type

- Administrator

## Prerequisites

- User must be logged in as administrator
- Job ads database table must exist

## Page Wireframe

![Job Ads Administration](../assets/jobs-ad-admin.png)

## Business Rules

- Only administrators can access this page
- Paging is shown when there are more than 10 job ads
- All columns except action columns are sortable
- Delete operations require confirmation

## Acceptance Criteria

1. When an administrator clicks on the Job Ads button in the administration part of the application he is redirected to the Job ads administration page.
1. If there are more than 10 job ads in the application, a paging mechanism is shown.
1. The administrator can sort by each column (except the action columns).
1. If there are no job ads in the application, a `No data available` message should be present.
1. If the administrator clicks the `Create` button he/she is redirected to the Create Job ad administration page.
1. If the administrator clicks the `View` button, he/she is redirected to the Job ad details page.
1. If the administrator clicks the `Edit` button, he/she is redirected to the Create Job ad administration page but with already filled details.
1. If the administrator clicks the `delete` button, a `Are you sure` confirmation window pops up.
1. If the administrator clicks `Yes` in the delete confirmation window, the row entry is deleted from the database and the grid is updated immediately.
1. If the administrator clicks `Cancel` in the delete confirmation window, the window closes and nothing else happens.

## Error Scenarios

- No job ads available → Show "No data available" message
- Delete confirmation cancelled → No action taken
- Network error during delete → Show error message
- Job ad not found → Show error message

## Test Scenarios

1. Happy path: Administrator views, creates, edits, and deletes job ads successfully
2. Empty state: No job ads, shows appropriate message
3. Paging: More than 10 job ads, paging is displayed
4. Delete cancellation: Administrator cancels delete operation
5. View job ad: Administrator views job ad details

## Related Stories

- [Create job ad](create-job-ad.md)
- [Job ad details](job-ad-details.md)
- [Job listing](job-listing.md)
