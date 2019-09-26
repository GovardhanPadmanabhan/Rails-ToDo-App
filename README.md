# README

```
Note:   This app was based on Mackenzie Child's youtube tutorial => https://youtu.be/fd1Vn-Wvy2w
        But, this is not an 1:1 exact copy. I did add a few features not shown in the tutorial.
```

### ToDo App

Simple todo web app built using ruby on rails. 

* User Account sign up/login, reset/change password, delete account
* Create user-specific todo lists
* Deployed to heroku


### Required

* Ruby v2.6.3
* Rails v5.2.3
* Node.js
* Postgres v11.4  (be sure to change the username and password in `database.yml`)
(If default is mysql, be sure to modify the code to mysql, mostly in `database.yml`)

### Database Creation

Open your SQL Shell psql (if you are using postgres), or run mysql from terminal/cmd (if you are using mysql)

Run
```
create database todo_development;
```
and repeat the same for `todo_test` and `todo_production`

Note: If you are using MySQL, you need two run additional statements
Run
```
GRANT ALL PRIVILEGES ON todo_development.* TO 'root'@'localhost' WITH GRANT OPTION;
```
and 
```
FLUSH PRIVILEGES;
```
Again, you have to repeat this process for `todo_development` and `todo_production` as well

### Starting the Service

* Clone the project to your desired destination
* Run
```
bundle install
```
in the project's root directory to install all the gems.
* Run
```
rake db:create
```
* Run
```
rake db:migrate
```
* Run 
```
rails s
``` 
to start the service
* Open your desired browser, and go to [localhost:3000](http://localhost:3000)

Note that when running locally, the service can't send a reset password link. For that, install and run [mailcatcher](https://mailcatcher.me/)


### Running Tests

Run

```
rspec
```
or `bundle exec rspec` or `rake` if that didn't work, to run the test files created for each models and controllers
