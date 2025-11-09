# Landing page

## User Story

As a user
I want to view the company's landing page
So that I can learn about the company and access important links.

## Description

This page is the default home page for our application. It displays some basic information:

- Dynamic list of action buttons
- Dynamic list of social buttons
- A configurable free text
- Configurable background image
- A list of the latest tweets/facebook posts

## User Type

- Anonymous
- Logged In
- Administrator

## Prerequisites

- Links must be configured in administration (for action and social buttons)
- Twitter/Facebook API must be configured (for social media posts)
- Environment variables or JSON configuration must be set

## Page Wireframe

![Landing Page](../assets/home-page.png)

## Business Rules

- Background image is configurable via environment variables or JSON file
- Action buttons are customizable from administration
- Social buttons are customizable from administration
- Social buttons have an icon and a link
- Free text is configurable via environment variables or JSON file
- Twitter/Facebook page is configurable via environment variables or JSON file
- Latest tweets/facebook posts are displayed dynamically

## Acceptance Criteria

1. When navigating to the app root we should see the Home page.
1. When clicking on the home button from the navigation bar, the home page should be opened.
1. The image background for the home page should be configurable via the project environment variables or a JSON file configuration.
1. When a user clicks an action button he should be redirected to the respective web address.
1. The dynamic action button list should be customizable from the administration.
1. The dynamic social button list should be customizable from the administration.
1. A social button should have an icon and a link.
1. When a user clicks on a social button, he should be redirected to the respective URL link.
1. The free text under the social button list should be configurable via the project environment variables or a JSON file configuration.
1. The home page should display the latest twitter or facebook items from the organization twitter/facebook page.
1. The organization twitter/facebook page should be configurable via the project environment variables or a JSON file configuration.

## Error Scenarios

- No action buttons configured → Show empty state or hide section
- No social buttons configured → Show empty state or hide section
- Twitter/Facebook API unavailable → Show error message or hide section
- Invalid link URL → Show error message or prevent navigation
- Background image not found → Show default background or error

## Test Scenarios

1. Happy path: User views landing page with all elements displayed
2. Empty state: No buttons configured, appropriate sections hidden
3. Action button click: User clicks action button, redirected to URL
4. Social button click: User clicks social button, redirected to URL
5. Social media posts: Latest tweets/facebook posts are displayed
6. Configuration: Background image and free text are configurable

## Related Stories

- [Links administration](links-admin.md)
- [Create link](create-link-admin.md)
