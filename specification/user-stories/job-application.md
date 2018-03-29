# Job application

This page allows a logged in user to apply for a job ad.

## Page wireframe

![Home Page](../assets/job-apply.png)

## Acceptance criteria

1. When a user clicks on the Apply button in a job ad and if he is logged in, he is redirected to the Job application page.
2. The user MUST enter their first name.
3. A valid first name is considered a string, containing only alphabetical characters, and that has a length between 3 and 100 characters.
4. The user MUST enter the a last name.
5. A valid last name is considered a string, containing only alphabetical characters, and that has a length between 3 and 100 characters.
6. The user MAY enter an additional comment.
7. The additional comment must be at most - 1024 symbols.
8. The user MUST upload their CV.
9. The maximum size of a CV document is 16 mb.
10. The user MAY upload a cover letter.
11. The maximum size of a cover letter document is 16 mb.
12. If the user does not meet any of the required criteria and tries to submit the job application - a error message is displayed.
13. The `Submit` button should be disabled if there is any invalid fields in the form.