# Job listing

This page allows potential applicants to browse open positions in the company. Additionally, the user can filter the job ads by some set of criteria.

## Page wireframe

![Home Page](../assets/jobs-listing.png)

## Acceptance criteria

1. When a user clicks on the Careers button in the navigation he/she should be redirected to the Job Listings page.
1. A job ad should have a title, description, type (IT, Sales, Marketing, etc.), creation date, status (Active, Inactive).
1. The page should display a list of 10 active positions + paging if there are more than 10 active positions.
1. The user should be able to filter the jobs by a search term. The search should be using the title and the description of the job ad. *Hint: Use contains - no complex algorithms are required.*
1. The user should be able to filter the job ads by job type.
1. The user should be able to filter the jobs by a create after date filter.
1. All the filters should be able to work together. Example: I should be able to search for jobs that have the keyword `TypeScript`, are of job type `IT` and are created after the Sunday of last week.
1. If the user clicks on the paging he/she should be shown the next 10 job ads.
1. If the user clicks the reset all filter button, all filters should be removed and the user should be navigated to the first page of the grid.
1. When a user clicks on a job ad, he/she should be redirected to the Job ad details page.
1. The user should NOT be able to view inactive job ads.
1. The administrator should be able to view inactive job ads.
1. If there are no job ads, the paged list is replaced with the message `There are no active positions - please try later`.
