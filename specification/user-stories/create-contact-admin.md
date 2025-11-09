# Create/edit contacts details administration

## User Story

As an administrator
I want to create or edit contact details
So that I can manage the company's contact information displayed to users.

## Description

This page allows administrators to create or edit Contact details.

**Note:** If you wish you can create this form as a modal and not as a separate page.

## User Type

- Administrator

## Prerequisites

- User must be logged in as administrator
- Contact details administration page must exist

## Page Wireframe

![Create Contact Detail](../assets/create-contact.png)

## Business Rules

- Name must be between 2 and 128 characters
- Value must be between 2 and 1024 characters
- Is map address checkbox determines if the contact detail is used for Google Maps display
- CreatedAt timestamp is set automatically on creation

## Validation Rules

- Name: 2-128 characters (required)
- Value: 2-1024 characters (required)
- Is map address: Boolean (optional)

## Acceptance Criteria

1. When an administrator clicks on the Create button in the Contact details administration he/she is redirected to the Contact details create administration page.
1. The name of the contact detail must be between 2 and 128 characters. If that is not the case the administrator will get an error message.
1. The value of the contact detail must be between 2 and 1024 characters. If that is not the case the administrator will get an error message.
1. If the administrator marks the `Is map address?` checkbox an integrated Google map is shown in the Contacts page with the value of the current contact detail for an address.
1. When the administrator clicks the `Create` button and all the form fields are valid, a new contact detail is created, which has its CreatedAt value set to the moment of the contact detail creation.
1. If there are any invalid fields in the form, the `Create/Edit` button should be disabled.
1. After the contact detail is created the administrator is redirected to the Contact details administration page.

## Error Scenarios

- Name too short (< 2 characters) → Show error message
- Name too long (> 128 characters) → Show error message
- Value too short (< 2 characters) → Show error message
- Value too long (> 1024 characters) → Show error message
- Invalid form fields → Disable Create/Edit button
- Network error during save → Show error message

## Test Scenarios

1. Happy path: Administrator creates contact detail successfully
2. Validation failure: Administrator enters invalid data, sees error messages
3. Edit mode: Administrator edits existing contact detail
4. Form validation: Button disabled when form is invalid

## Related Stories

- [Contact details administration](contacts-admin.md)
- [Contacts page](contacts-page.md)
