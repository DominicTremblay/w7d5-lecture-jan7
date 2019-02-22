# W7D5 - Lecture

- Nested Resources

# typical show page for a quote

`/quotes/4`

# a typical list of comments

`/comments`

# comments of quote with id 4

`/quotes/4/comments/`

# add comments to my app

- create a Comment model with a migration
- run the migration
- set the routes (new, create)
- Create a comments controller
- Modify the show view of quote

# routes for comments

- `/quotes/:quote_id/comments/new` Display the new comment form
- `/quotes/:quote_id/comments` Post to create a new comment in the database
- `/quotes/:quote_id/comments/:id/` Show page of a comment

- Example of params for post `/quotes/:quote_id/comments`

```ruby
{"utf8"=>"✓", "authenticity_token"=>"XTwKY8aiz1042GtJy6T/tLYOnDdEJ4FBk0LlOdmGU8CwRP7Dql63iEbdDJh577zSeBveYvyagU3p93EIO7LW1A==", "comment"=>{"content"=>"Super quote"}, "commit"=>"Add comment", "controller"=>"comments", "action"=>"create", "quote_id"=>"4"}
```

- Delete a comment

`DELETE /quotes/:quote_id/comments/:id`
