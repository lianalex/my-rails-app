# README

ruby -v: Check Ruby version

rails -v: Check rails version

gem install rails: install Ruby on Rails

rails new [appName]: Creates a Rails project with name [appName]

bundle install: Install the dependencies for the project

rake db:setup: migrate the database schema and data

rake db:migrate: migrate the database changes

rails server: Run project and check at localhost:3000

BEWARE: rake db:drop:_unsafe: delete the database

1) Download repository
2) Navigate to the repository in a terminal window
-If on Mac uncomment/comment the tzinfo
3) Run: bundle install
4) Run: db:setup
5) Run db:migrate
6) Run: rails server
7) Before pushing if on Mac recomment/uncomment the tzinfo
