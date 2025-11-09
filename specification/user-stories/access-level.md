# Page Access Level

## User Story

As a system administrator
I want to define access levels for different pages
So that users can only access pages appropriate to their role.

## Description

The application has 3 types of access level: Anonymous, Logged In, and Administrator. This story defines the access control rules for each page in the application.

## User Types

- Anonymous
- Logged In
- Administrator

## Access Control Matrix

The table below describes the access level of each role to each page in the application:

|                                | Anonymous | Logged In | Administrator |
|--------------------------------|-----------|-----------|---------------|
| Home page                      | Yes       | Yes       | Yes           |
| Job listing                    | Yes       | Yes       | Yes           |
| Contacts                       | Yes       | Yes       | Yes           |
| Apply for Job                  | No        | Yes       | Yes           |
| User administration            | No        | No        | Yes           |
| Job Ad Administration          | No        | No        | Yes           |
| Create Job Ad                  | No        | No        | Yes           |
| Links administration           | No        | No        | Yes           |
| Create Link                    | No        | No        | Yes           |
| Contact details administration | No        | No        | Yes           |
| Create contact details         | No        | No        | Yes           |
| View Job Ad Applications       | No        | No        | Yes           |
| View Job Ad                    | Yes       | Yes       | Yes           |

## Business Rules

- Anonymous users can only view public pages (Home, Job listing, Contacts, Job ad details)
- Logged-in users can view public pages and apply for jobs
- Administrators have full access to all pages including administration interfaces
- Access control must be enforced on both front-end and back-end

## Acceptance Criteria

1. If a user with insufficient access level tries to access a page, he should be redirected to the home page.

## Error Scenarios

- Unauthorized access attempt → Redirect to home page
- Session expired during access → Redirect to login page (for logged-in users)

## Related Stories

- [Login user](login-user.md)
- [Register new user](register-new-user.md)
- All administration stories
