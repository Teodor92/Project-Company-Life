# List job ads administration

This page allows administrators to view all the job ads in the application, add new ones and delete/edit existing ones.

## Page wireframe

![Home Page](../assets/jobs-ad-admin.png)

## Acceptance criteria

1. When a user clicks on the Job Ads button in the administration part of the application he is redirected to the Job ads administration page.
2. If there are more than 10 job ads in the application, a paging mechanism is shown.
3. The administrator can sort by each column (except the action columns).
4. If there are no job ads in the application, a `No data available` message should be present.
5. If the user clicks the `Create` button he/she is redirected to the Create Job ad administration page.
6. If the user clicks the `View` button, he/she is redirected to the Job ad details page.
7. If the user clicks the `Edit` button, he/she is redirected to the Create Job ad administration page but with already filled details.
8. If the user clicks the `delete` button, a `Are you sure` confirmation window pops up.
9. If the user clicks `Yes` in the delete confirmation window, the row entry is deleted from the database and the grid is updated immediately.
10. If the user clicks `Cancel` in the delete confirmation window, the window closes and nothing else happens.