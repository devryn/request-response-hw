This folder structure should be suitable for starting a project that uses a database:

* Fork this repo
* Clone this repo
* Create your classes in lib
* [Optional] Create a "Data" module inside of `lib` inside of it place a constant called `USERS` which is equal to the array of all the user hashes
* [Optional] Replace the user hashes with an instance of a user object
* ... ?
* Profit


## Rundown

```
.
├── Gemfile             # Details which gems are required by the project
├── README.md           # This file
├── console.rb          # `ruby console.rb` starts `pry` with models loaded
└── lib                 # Your ruby code (models, etc.) should go here
    └── all.rb          # Require this file to auto-require _all_ `.rb` files in `lib`
```
# request-response-hw
# request-response-hw

URLS that work with this project:
* GET http://localhost:3000/users HTTP/1.1 will return all users in the array
* GET http://localhost:3000/users/1 HTTP/1.1 will return the user with the ID of 1. This URL will currently work for users 1-4
* GET http://localhost:3000/users/9999999 HTTP/1.1 will return NOT_FOUND

The users hash contains all users in the app - this can be updated with new first and last names and ages. 
