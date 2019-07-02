# Contacts page

This page provides basic contact details to the user and offers a Google maps integration for easy address display.

## Page wireframe

![Home Page](../assets/contacts.png)

## Acceptance criteria

1. When a user clicks on the Contacts button in the navigation bar, he/she should be redirected to the Contacts page.
1. The user should see a list of contact details for the company.
1. The contact details list should be dynamic and should be loaded from the database.
1. A contact detail has a name, a value, an isPrimaryAddress flag and an icon.
1. The user should see a Google maps with the location of the company. The address should be extracted as the value of the first contacts details entry that has the isPrimaryAddress flag set to true. If there is no primary address set, just show the map and set the default display position to Sofia.
1. If there are multiple contacts details entries that have the isPrimaryAddress flag set to true, take only the first and ignore the rest.
