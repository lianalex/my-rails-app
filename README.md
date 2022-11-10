# README

ruby -v: Check Ruby version

rails -v: Check rails version

gem install rails: install Ruby on Rails

rails new [appName]: Creates a Rails project with name [appName]. </br>
If you got error at this step, open the Gemfile in C:\Users\\[userName]\\[appName], change the line to gem 'tzinfo-data'

change directory to [appName] folder 

bundle install: Install the dependencies for the project

rake db:setup: migrate the database schema and data

rake db:migrate: migrate the database changes

rails server: Run project and check at localhost:3000

BEWARE: rake db:drop:_unsafe: delete the database

1) Download repository
2) Navigate to the repository in a terminal window
-If on Mac uncomment/comment the tzinfo
3) $ bundle install
4) $ rake db:setup
5) $ rake db:migrate
6) $ rails server
7) Before pushing if on Mac recomment/uncomment the tzinfo

Process to update a model:
1) rake db:drop:_unsafe
2) Update db/schema.rb
3) Update db/migrate/[model migration]
4) Update app/controllers/[controller name]
5) Update app/view/[your view]/_form.html.erb
6) Update app/view/[your view]/show.html.erb
