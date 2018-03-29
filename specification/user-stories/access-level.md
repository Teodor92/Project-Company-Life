# Page Access Level

The application has 3 types of access level:

- Anonymous
- Logged In
- Administrator

The table below describes the access level of each role to each page in the application:

|                                | Anonymos | Logged In | Administrator |
|--------------------------------|----------|-----------|---------------|
| Home page                      | Yes      | Yes       | Yes           |
| Job listing                    | Yes      | Yes       | Yes           |
| Contacts                       | Yes      | Yes       | Yes           |
| Apply for Job                  | No       | Yes       | Yes           |
| User administration             | No       | No        | Yes           |
| Job Ad Administration          | No       | No        | Yes           |
| Create Job Ad                  | No       | No        | Yes           |
| Links administration           | No       | No        | Yes           |
| Create Link                    | No       | No        | Yes           |
| Contact details administration | No       | No        | Yes           |
| Create contact details         | No       | No        | Yes           |
| View Job Ad Applications       | No       | No        | Yes           |
| View Job Ad                    | Yes      | Yes       | Yes           |

## Acceptance criteria

1. If a user with insufficient access level tries to access a page, he should be redirected to the home page.