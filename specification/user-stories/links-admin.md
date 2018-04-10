# List links administration

This page allows administrators to view all the job ads in the application, add new ones and delete/edit existing ones.

## Page wireframe

![Home Page](../assets/links-admin.png)

## Acceptance criteria

1. When a administrator clicks on the Links button in the administration part of the application he/she is redirected to the Links administration page.
2. If there are more than 10 links in the application, a paging mechanism is shown.
3. The administrator can sort by each column (except the action columns).
4. If there are no Links in the application, a `No data available` message should be present.
5. If the administrator clicks the `Create` button he/she is redirected to the Create Link administration page.
6. If the administrator clicks the `Edit` button, he/she is redirected to the Create Link administration page but with already filled details.
7. If the administrator clicks the `Delete` button, a `Are you sure` confirmation window pops up.
8. If the administrator clicks `Yes` if the delete confirmation window, the row entry is deleted from the database and the grid is updated immediately.
9. If the administrator clicks `Cancel` if the delete confirmation window, the window closes and nothing else happens.
10. There must be an additional column for the link type (not shown in the wireframe).
