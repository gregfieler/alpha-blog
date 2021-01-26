# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

be careful with migration files - i had messed one up and not being careful how to fix it caused all kinds of issues

ended up using rake db:drop db:create db:migrate db:seed to clear the database and start over

running that on heroku didn't work the first time - had to add environment variable to force it
but!  the data was not destroyed - fortuneately one of the migrations failed (table was already there) but it was the last one (long story - had to fix migrations twice in dev) so i got what i needed the app works now and there's some data in it

there will be a problem with that migration file if i leave it in.