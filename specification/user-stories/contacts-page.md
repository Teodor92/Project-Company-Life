# Contacts page

This page provides basic contact details to the user and offers a Google maps integration for easy address display.

## Page wireframe

![Home Page](../assets/contacts.png)

## Acceptance criteria

1. When a user clicks on a job ad, he/she should be redirected to the Job ad details page.
2. The user should see a list of contact details for the company.
3. The contact details list should be dynamic and should be loaded from the Mongo.
4. A contact detail has a name, a value, an isPrimaryAddress flag and an icon.
5. The user should see a Google maps with the location of the company. The address should be extracted as the value of the first contacts details entry that has the isPrimaryAddress flag set to true.
6. If there are multiple contacts details entries that have the isPrimaryAddress flag set to true, take only the first and ignore the rest.
