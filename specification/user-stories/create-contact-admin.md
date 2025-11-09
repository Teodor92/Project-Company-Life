# Create/edit contacts details administration

This page allows administrators to create or edit Contact details.

**Note:** If you wish you can create this form as a modal and not as a separate page.

## Page wireframe

![Home Page](../assets/create-contact.png)

## Acceptance criteria

1. When an administrator clicks on the Create button in the Contact details administration he/she is redirected to the Contact details create administration page.
1. The name of the contact detail must be between 2 and 128 characters. If that is not the case the administrator will get an error message.
1. The value of the contact detail must be between 2 and 1024 characters. If that is not the case the administrator will get an error message.
1. If the administrator marks the `Is map address?` checkbox an integrated Google map is shown in the Contacts page with the value of the current contact detail for an address.
1. When the administrator clicks the `Create` button and all the form fields are valid, a new contact detail is created, which has its CreatedAt value set to the moment of the contact detail creation.
1. If there are any invalid fields in the form, the `Create/Edit` button should be disabled.
1. After the contact detail is created the administrator is redirected to the Contact details administration page.
