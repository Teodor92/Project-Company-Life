# Create/edit job ad administration

This page allows administrators to create or edit a job ad.

**Note:** If you wish you can create this form as a modal and not as a seprate page.

## Page wireframe

![Home Page](../assets/create-job-ad.png)

## Acceptance criteria

1. When a user clicks on the `Create` button in the Job ad administration he/she is redirected to the Create Job ad administration page.
1. The user must enter a title with a minimum character length 4 and maximum length 256.
1. The user must enter a description with a minimum character length 4 and maximum character length 16384.
1. For the description a WYSIWYG editor must be available for the user.
1. The user must select the job category for this ad - the available predefined categories are - IT, Marketing, Sales, Operations, Other.
1. The user must select the status of this add - Active or Inactive.
1. The `Create` button must be disabled if there are any errors in the form.
1. When the user clicks the `Create` button and all the form fields are valid, a new job ad is created, which has its CreatedAt value set to the moment of the ad creation.
1. After the ad is created the user is redirected to the Job ads list administration page.
