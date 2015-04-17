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

### Technologies Used
  * Ruby on Rails
  * PostgreSQL

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
The app is also currently deployed on heroku at (http://guarded-waters-2050.herokuapp.com/)
it may take up to a minute if it hasn't been opened in a while

## Dependencies
  * byebug
  * coffee-rails (~> 4.1.0)
  * jbuilder (~> 2.0)
  * jquery-rails
  * kaminari
  * pg
  * rails (= 4.2.1)
  * sass-rails (~> 5.0)
  * sdoc (~> 0.4.0)
  * spring
  * turbolinks
  * uglifier (>= 1.3.0)
  * web-console (~> 2.0)