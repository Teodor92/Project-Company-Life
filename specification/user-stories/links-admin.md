# List links administration

This page allows administrators to view all the links in the application, add new ones and delete/edit existing ones. Links are displayed on the landing page either as Action Buttons(Action links) or as Social Buttons(Social links).

## Page wireframe

![Home Page](../assets/links-admin.png)

## Acceptance criteria

1. When a administrator clicks on the Links button in the administration part of the application he/she is redirected to the Links administration page.
1. If there are more than 10 links in the application, a paging mechanism is shown.
1. The administrator can sort by each column (except the action columns).
1. If there are no Links in the application, a `No data available` message should be present.
1. If the administrator clicks the `Create` button he/she is redirected to the Create Link administration page.
1. If the administrator clicks the `Edit` button, he/she is redirected to the Create Link administration page but with already filled details.
1. If the administrator clicks the `Delete` button, a `Are you sure` confirmation window pops up.
1. If the administrator clicks `Yes` if the delete confirmation window, the row entry is deleted from the database and the grid is updated immediately.
1. If the administrator clicks `Cancel` if the delete confirmation window, the window closes and nothing else happens.
1. There must be an additional column for the link type (not shown in the wireframe).
