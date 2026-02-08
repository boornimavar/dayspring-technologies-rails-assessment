# dayspring-technologies-rails-assessment
This repository documents my assessment work and learning progress during the Ruby on Rails internship at Dayspring Technologies.

**Topics Covered – Week 1**
The following installations have been successfully completed on all trainee machines:

- Ruby
- Rails
- RVM
- PostgreSQL
- DBeaver

All tools and installations should be installed, verified, and functioning as expected.Ruby Fundamentals

- Ruby data types and variables
- Single-line and multi-line commands
- Differences between Ruby print statements (puts, print, p)
- String interpolation
- Dynamic user input using gets and chomp
- Introduction to Ruby classes, objects, methods
- Understanding object_id and class
- Using IRB (Interactive Ruby Shell)
- Writing, running, and executing independent Ruby scripts

Rails Introduction & Core Concepts

- Introduction to Ruby on Rails
- Rails MVC architecture overview
- Rails folder structure and purpose of key directories
- Creating a Rails application
- Convention over Configuration (with practical examples)
- Rails scaffolding and its role in rapid development
- Common Rails commands( rails new with multiple custom and skip variations, routes, generate commands, console)
- Integrating a Rails application with a PostgreSQL database

Ruby Concepts Applied in Rails

- Ruby data types and variables, and usage within Rails applications
- Multiple ways to add records to the database: Through Rails UI (forms), using database clients (DBeaver), Via seed files, using Rails console
- Introduction to Ruby gems: installation and usage with eg Faker gem

**Topics Covered – Week 2**

1. **Validations** - types of validations, inbuilt and custom validation.Multiple ways to write and invoke validations via view and model with examples.
2. **Model methods** and how to invoke them from different parts of the application and through the console.
3. **Scopes** - with and without parameters, convert the model methods to scopes.
4. **Method Chaining -** with model scope and methods difference
5. **Collections and Ruby Iterators** including times, each, map, collect, select, reject, inject, all and any with array and hash examples.
6. **Looping and Control Statements** in Ruby - including for, while, until, loop, break, next, redo and retry.
7. **Conditional Statements:** if, elsif, unless, case, and ternary operators.
8. **Object hierarchy** in Ruby - with Object, Kernel, BasicObject details.
9. **Ancestors** classes and modules in Ruby - usage of the ancestors method and understanding method lookup.
10. **Inheritance** - Class level
11. **Access Modifiers** in Ruby

**12. Custom** **routes** and custom controller actions - to create and navigate to a custom page in the app.

# Creating Rails App
## To create a rails application
rails new store_app -d postgresql
## To create table with default models and controllers
rails g scaffold Product name:string price:integer
## To save changes to the table
rails db:migrate
## To run the rails server
rails server
## To open rails console
rails console
## To create model manually
rails g model Product name:string price:integer
## To add the routes for the table 
do resources :products
## To create controller manually
rails g controller products
***Convention over Configuration***
Rails automatically expects:
table: products
controller: ProductsController
views folder: views/products
We configured nothing. Rails guessed everything.

# 4 ways to insert values into table
1. through console
   
2. through db\seed.rb
   1. Using Raker Gem
3. through UI
4. through Dbeaver
