# Code Challenge

Write a ruby script named “find_consecutive_runs” that accepts as an argument a list of integers.

- It must find in that list all runs of 3 consecutive numbers that increase or decrease by 1
- It should return the list indices of the first element of each run
- If there are no consecutive runs it should output `No Runs Found`

# Running the app

Run `ruby consecutive_runs.rb [1, 2, 3, 5, 10, 9, 8, 9, 10, 11, 7, 8, 7]`

and get output `Results: [0, 4, 6, 7]`

# Running tests

Run `bundle install` and then `bundle exec rspec`
