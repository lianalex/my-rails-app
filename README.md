# README

## Installation Instructions

1) Check for Ruby version:
ruby -v
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]

2) If not installed, download at: https://www.ruby-lang.org/en/downloads/

3) Check Gem version:
gem -v
3.3.7

4) If not up-to-date:
gem update

5) Install Ruby on Rails:
gem install rails

6) Check Rails version:
rails -v
Rails 7.0.4

##Build Instructions

1) change directory to my-rails-app folder 

2) Install the dependencies for the project: 
  -If on Mac comment line 40 in the Gemfile in the main directory: gem "tzinfo-data"
  -If on Mac uncomment line 41 in the Gemfile in the main directory: #gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
bundle install

3)Set up the database schema:
rake db:setup 

4) Migrate the database data:
rake db:migrate

5) Run project:
rails server

6) Go to localhost:3000


##How to Create a New Rails Project:
rails new [appName]: Creates a Rails project with name [appName]. </br>
If you got error at this step, open the Gemfile in C:\Users\\[userName]\\[appName], change the line to gem 'tzinfo-data'

##Process to update a model:
1) rake db:drop:_unsafe
2) Update db/schema.rb
3) Update db/migrate/[model migration]
4) Update app/controllers/[controller name]
5) Update app/view/[your view]/_form.html.erb
6) Update app/view/[your view]/show.html.erb

BEWARE: rake db:drop:_unsafe: delete the database
