# List contacts details administration

This page allows administrators to view all the contact details in the application, add new ones and delete/edit exiting ones.

## Page wireframe

![Home Page](../assets/contacts-admin.png)

## Acceptance criteria

1. When a user clicks on the Contact details button in the administration part of the application the user is redirected to the Contact details administration page.
2. If there are more than 10 contact details in the application, a paging mechanism is shown.
3. The administrator can sort by each column (except the action columns).
4. If there are no contact details in the application, a `No data available` message should be present.
5. If the user clicks the `Create` button he/she is redirected to the Create Contact details administration page.
6. If the user clicks the `Edit` button, he/she is redirected to the Create contact details administration page but with already field details.
7. If the user clicks the `Delete` button, a `Are you sure` confirmation window pops up.
8. If the user clicks `Yes` if the delete confirmation window, the row entry is deleted form the database and the grid is updated.
9. If the user clicks `Cancel` if the delete confirmation window, the window closes and nothing else happens.