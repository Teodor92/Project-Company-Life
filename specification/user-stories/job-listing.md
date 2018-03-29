# Job listing

This page allows potential applicants to browse open positions in the company. Additionally, the user can filter the job ads by some a set of criteria.

## Page wireframe

![Home Page](../assets/jobs-listing.png)

## Acceptance criteria

1. When a user clicks on the Careers button in the navigation he should be redirected to the Job listings page.
2. A job ad should have a title, description, type(IT, Sales, Marketing, etc.), creation date, status(Open, Closed).
3. The page should display a list of 10 open positions + paging if there are more than 10 open positions.
4. The user should be able to filter the jobs by a search term. The search should be using the title an the description of the job ad.
5. The user should be able to filter the job ads by job type.
6. The user should be able to filter the jobs by a create after date filter.
7. All the filters should be able work together. Example: I should be able to search for jobs that have the keyword `TypeScript`, are of job type `IT` and are created after the Sunday of last week.
8. If the user clicks on the paging he should be shown the next 10 job ads.
9. If the user clicks the reset all filter button, all filters should be removed.
10. When a user clicks on a job ad, he/she should be redirected to the Job ad details page.
11. The user should NOT be able to view closed job ads.
12. The administrator should be able to view closed job ads.
13. If there are no job ads, the paged list is replaced with the message `There are no open positions - please try later`.
