# README

## Requirements

* Ruby v2.3.4 
* Postgresql
* bundler
* npm (for client portion)

## Installation

This is the back-end API for [Bookclub for Goodreads](https://github.com/mdo5004/bookclub-react).

Clone this repo into your desired directory using `git clone https://github.com/mdo5004/bookclub-rails` or download the repo directly from Github.

In `bookclub-rails` run `bundle install` to install dependencies. 

To initialize and seed the database, make sure PostgresQL is running locally and run `rake db:create && rake db:migrate && rake db:seed`.

To start the API alone, run `rails server`. 

## To work on the API and Client together
In `bookclub-rails` directory, clone the front-end repo with `git clone https://github.com/mdo5004/bookclub-react`.

`cd` into `bookclub-react` and run `npm install && cd ..` to install the associated Node packages.

Use `rake start` to run both the client and the API simultaneously. Point your browser to `localhost:3000` to start the React client.


# bookclub-rails
