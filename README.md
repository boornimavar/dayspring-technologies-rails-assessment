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

# Rails Practice Log – CRUD with Hotel Table

This document tracks the practical concepts explored while learning Ruby on Rails using a single `Hotel` table without scaffolding.

---

## Creating a Rails Application

```bash
rails new store_app -d postgresql
```

---

## Creating a Table using Scaffold (default MVC)

```bash
rails g scaffold Product name:string price:integer
rails db:migrate
```

Scaffold automatically creates:
- Model
- Controller
- Views
- Routes

---

## Running the Application

```bash
rails server
rails console
```

---

## Creating Model Manually (without scaffold)

```bash
rails g model Product name:string price:integer
rails db:migrate
```

---

## Adding Routes Manually

In `config/routes.rb`:

```ruby
resources :products
```

---

## Creating Controller Manually

```bash
rails g controller products
```

---

## Convention Over Configuration

Rails automatically assumes:

| Concept | Rails expects |
|---|---|
| Table name | `products` |
| Controller | `ProductsController` |
| Views folder | `views/products` |

No configuration needed. Rails infers everything from naming.

---

## Creating Hotel Table for Practice (without scaffold)

```bash
rails g model Hotel name:string location:string rating:integer phone_number:string active:boolean
rails db:migrate
```

---

## Creating Controller for Hotel

```bash
rails g controller hotels
```

Add to `config/routes.rb`:

```ruby
resources :hotels
```

---

## Hotels Controller (CRUD)

`app/controllers/hotels_controller.rb`

```ruby
class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotels = Hotel.all
  end

  def show
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to @hotel, notice: "Hotel created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to @hotel, notice: "Hotel updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @hotel.destroy
    redirect_to hotels_path, notice: "Hotel deleted"
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :location, :rating, :phone_number, :active)
  end
end
```

---

## Views

Create folder: `app/views/hotels/`

### index.html.erb

```erb
<h1>Hotels</h1>

<%= link_to "New Hotel", new_hotel_path %>

<ul>
  <% @hotels.each do |hotel| %>
    <li>
      <%= link_to hotel.name, hotel_path(hotel) %>
      | <%= link_to "Edit", edit_hotel_path(hotel) %>
      | <%= link_to "Delete", hotel_path(hotel), method: :delete, data: { confirm: "Are you sure?" } %>
    </li>
  <% end %>
</ul>
```

### show.html.erb

```erb
<h2><%= @hotel.name %></h2>

<p>Location: <%= @hotel.location %></p>
<p>Rating: <%= @hotel.rating %></p>
<p>Phone: <%= @hotel.phone_number %></p>
<p>Active: <%= @hotel.active %></p>

<%= link_to "Back", hotels_path %>
```

### new.html.erb

```erb
<h1>New Hotel</h1>

<%= form_with model: @hotel do |f| %>
  <p>Name: <%= f.text_field :name %></p>
  <p>Location: <%= f.text_field :location %></p>
  <p>Rating: <%= f.number_field :rating %></p>
  <p>Phone: <%= f.text_field :phone_number %></p>
  <p>Active: <%= f.check_box :active %></p>

  <%= f.submit %>
<% end %>
```

### edit.html.erb

```erb
<h1>Edit Hotel</h1>

<%= form_with model: @hotel do |f| %>
  <p>Name: <%= f.text_field :name %></p>
  <p>Location: <%= f.text_field :location %></p>
  <p>Rating: <%= f.number_field :rating %></p>
  <p>Phone: <%= f.text_field :phone_number %></p>
  <p>Active: <%= f.check_box :active %></p>

  <%= f.submit %>
<% end %>
```

---

## 4 Ways to Insert Data into the Table

### 1) Through Rails Console

```ruby
Hotel.create(name: "Oberoi", location: "Delhi", rating: 4, phone_number: "88888", active: true)
```

---

### 2) Through db/seeds.rb using Faker

Add to Gemfile:

```ruby
gem 'faker'
```

Run:

```bash
bundle install
```

`db/seeds.rb`:

```ruby
5.times do
  Hotel.create(
    name: Faker::Restaurant.name,
    location: Faker::Address.city,
    rating: rand(1..5),
    phone_number: Faker::PhoneNumber.cell_phone,
    active: true
  )
end
```

Run:

```bash
rails db:seed
```

---

### 3) Through Rails UI (Forms)

Using `form_with` in views to submit data.

---

### 4) Through DBeaver (Database Client)

Insert records directly into PostgreSQL and verify using:

```ruby
Hotel.all
```

---
