# Create/edit link administration

## User Story

As an administrator
I want to create or edit links
So that I can manage action buttons and social buttons displayed on the landing page.

## Description

This page allows administrators to create or edit links. Links are displayed on the landing page either as Action Buttons (Action links) or as Social Buttons (Social links).

## User Type

- Administrator

## Prerequisites

- User must be logged in as administrator
- Links administration page must exist

## Page Wireframe

![Create Link](../assets/create-link.png)

## Business Rules

- Name must be between 3 and 128 characters
- Link target is required
- Icon link is required (can be HTTP link or material icon name)
- Link type can be "action link" or "social link" (default: social link)
- Hidden links are not displayed in the UI
- CreatedAt timestamp is set automatically on creation

## Validation Rules

- Name: 3-128 characters (required)
- Link target: Must have a value (required)
- Icon link: Must have a value (required)
- Link type: Must be "action link" or "social link" (required, default: social link)
- Hidden: Boolean (optional)

## Acceptance Criteria

1. When an administrator clicks on the Create button in the Links administration he/she is redirected to the Link create administration page.
1. The link must have a name that is between 3 and 128 characters. If that is not the case the administrator will get an error message.
1. The link target field must have a value. If that is not the case the administrator will get an error message.
1. The icon link field must have a value. If that is not the case the administrator will get an error message.
1. The administrator must choose a type for the link - the predefined types are action link and social link. The default value in the drop-down is a social link.
1. If the administrator marks the `Hidden?` option, the link should not be displayed in the UI.
1. If there are any invalid fields in the form, the `Create/Edit` button should be disabled.
1. When the administrator clicks the `Create` button and all the form fields are valid, a new link is created, which has its CreatedAt value set to the moment of the link creation.
1. After the link is created the administrator is redirected to the Links administration page.

## Optional Acceptance Criteria

1. The icon link can also be a dropdown with predefined material icons. The most optimal way for this to work is to accept a material icon name OR an http link.

## Error Scenarios

- Name too short (< 3 characters) → Show error message
- Name too long (> 128 characters) → Show error message
- Empty link target → Show error message
- Empty icon link → Show error message
- Invalid form fields → Disable Create/Edit button
- Network error during save → Show error message

## Test Scenarios

1. Happy path: Administrator creates link successfully
2. Validation failure: Administrator enters invalid data, sees error messages
3. Edit mode: Administrator edits existing link
4. Hidden link: Link is created but not displayed in UI
5. Icon selection: Administrator selects material icon from dropdown

## Related Stories

- [Links administration](links-admin.md)
- [Landing page](landing-page.md)
