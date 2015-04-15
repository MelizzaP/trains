Wellspring Coding Challenge
===========================

There are many train lines in the city of Chicago. The El is the quickest, the Metra is used to and from the suburbs, and the Amtrak crosses large distances. The assignment is to write a program that reads in a ‘comma separated values’ (CSV) file containing train information and outputs the data to the user.

---

## Deliverables

- Allow users to upload the CSV file
- Display the data in the specified format as the content of a web page
- All entries displayed must be unique
- Output should be sorted in alphabetical order by Run Number
- Use any technologies you please to accomplish these tasks

### Bonus 
- Add pagination controls which show 5 valid data items per page
- Set up CRUD (Create, Read, Update, Delete) functionality

### Things To Consider


### Technologies Used
  * Server-side: Ruby on Rails, PostgreSQL
  * Testing: Rspec

### Installation
Run the following commands in your terminal
```
  git clone git@github.com:MelizzaP/trains.git trains
  cd trains
  bundle install
```
Create a database by running
```
  bundle exec rake db:create db:migrate
```
  
Run locally(localhost:3000)
```
  rails server
```
  
Run test suite
```
  bundle exec rspec
```
---                                                       
  
## Thoughts for the future
- 