# Project Company Life

<!-- markdownlint-disable no-inline-html -->
<img alt="honeybee logo" src="./assets/honeybee-logo.png" width="300px">
<img alt="telerik academy logo" src="./assets/telerik-logo.png"  width="250px">
<!-- markdownlint-enable no-inline-html -->

## Final Project Assignment

This document serves as a general overview of all the topics related to the construction of the project in question.

## General description

The purpose of this project is rather straightforward - create a web application that can serve as a marketing site for a company. The website should contain the following functionality:

- A configurable landing page.
- A section with job ads.
- The ability for users to apply for a job ad.
- An interface for managing all applications by the system administrators.
- A configurable about/contacts page.

For a detailed information about each feature, please refer to the `User stories` section of this document.

## User Stories

This section describes all the required user stories that need to be completed in order for the project to be ready for use.

You can find all the user stories, by navigating to these links:

1. [Landing page](user-stories/landing-page.md)
1. [Job listing](user-stories/job-listing.md)
1. [Job ad details](user-stories/job-ad-details.md)
1. [Contacts page](user-stories/contacts-page.md)
1. [Register new user](user-stories/register-new-user.md)
1. [Login user](user-stories/login-user.md)
1. [Job application](user-stories/job-application.md)
1. [Users administration](user-stories/list-user-admin.md)
1. [Job ads administration](user-stories/job-ads-admin.md)
1. [Create job ad](user-stories/create-job-ad.md)
1. [Job application administration](user-stories/job-applications-admin.md)
1. [Links administration](user-stories/links-admin.md)
1. [Create link](user-stories/create-link-admin.md)
1. [Contact details administration](user-stories/contacts-admin.md)
1. [Create contact detail](user-stories/create-contact-admin.md)
1. [Access level](user-stories/access-level.md)

## Technical Stack

The front-end of the application can be done with Angular/React/Vue.js or any other technology you wish.
The whole stack could be the MEAN stack (Express, Node and Database of your choice) or any other backend technology you wish.

## Code Style

Use a ESLint to enforce consistent style - doesn't matter which one you use, your code should be consistent.

## Testing

It is advisable to write a lot of test for the application.

- Write Unit Tests for small isolated pieces of logic.
- Write Integration End to End test for a big chuck of the functionality.

Try to hit around a 80% code coverage. If you are using `JavaScript/TypeScript` based technologies - Jest is recommended as a testing framework.

## Proposed Architecture

This following section describes a proposed architecture that may or may not be used by the development team.

![Architecture](assets/example-architecture.png)

The suggested architecture is composed of the following sub-projects:

- Front-End - the purpose of this project is to visualize our data and take user input while transmitting it to the back-end. This project contains the following sub-components:
        - Angular UI - this component deals ONLY with the visualization of data
        - Service Layer - this is the home of all our data communication logic, sending POST/GET/PUT/DELETE requests to the back-end should be done through here.

- Back-End **[Option 1]** - the purpose of this project is to abstract any communication with the data source and provide a clean Web API interface for our UI to consume. This project contains the following sub-components:
        - Express Controllers/Routes layer - this component houses all the express routing logic and exposes a valid REST CRUD API for our front-end to consume.
        - Service Layer - this is the home of all our data storage and validation logic. If we want to store something in our database, we should go through here.

- Data storage - this is the persistent storage for our system.

- Back-End **[Option 2]** - you could use BAAS like [Firebase](https://firebase.google.com/), [Kinvey](https://www.kinvey.com/)
- Back-End **[Option 3]** - if you wish to practice only front end skills, it's advisable to use a mock Service Layer to imitate a backend service.

## General pointers

In the authors' opinion, the bellow recommendations may be of use to the developers of this system.

- It is highly recommended to use Angular Material([https://material.angular.io/](https://material.angular.io/)) components and NOT write everything from scratch. Or any other component librabry.
- The wireframe images are NOT to be taken as 100% accurate - use imagination and common sense.

## Challenges

If you manage to complete the whole project and want something else to try, here are some additional challenges:

- Implement 3rd party authentication using Facebook, Tweeter, Github, and Google.
- Make a new administration for the Job Category and use it to dynamically create job categories.
- Generate a test coverage report for the application.
- Create a mobile/tablet friendly application. (Responsive design)
