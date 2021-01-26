# Jurassic Park System, v1

#### This is an API with full CRUD, built using Ruby on Rails.  January 26, 2021

#### By _**Kortney Stinson**_

## Description

This is an API that includes data and full CRUD functionality for a mock version of Jurassic Park. It includes multiple scopes listed below for querying.

The application structure is outlined below.  

Models:
  - Cage
    - name - string
    - max_capacity - integer
    - number_of_dinosaurs - integer
    - power_status - string

  - Dinosaur
    - name - string
    - species - string
    - diet_type - string
    - cage_id - integer

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)

## Installation

In your terminal:
* `git clone https://github.com/kortstin/JurassicParkAPI.git`
* `cd jurasic_park_API`
* `bundle install`

## Development server

Run `rails s` for a dev server. It will be servered on `http://localhost:3000/`, by default.

## API Routes

- All Cages - GET `http://localhost:3000/cages`
  - Returns all cages.
- New Cage - POST `http://localhost:3000/cages?name={name}&max_capacity={max_capacity}&power_status={power_status}`
  - Creates new cage.
- Show Cage - GET `http://localhost:3000/cages/:id`
  - Displays cage details.
- Edit Cage - PATCH or PUT `http://localhost:3000/cages/{id}/edit?{params}`
  - Update cage details.
  - Params can be any combination of `name={name}&max_capacity={max_capacity}&power_status={power_status}`
- Destroy Cage - DELETE `http://localhost:3000/cages/:id`
  - Removes the given cage from the database.
- All Dinosaurs - GET `http://localhost:3000/dinosaurs`
  - Returns all dinosaurs.
- New Dinosaur - POST `http://localhost:3000/dinosaurs?name={name}&species={species}&diet_type={diet_type}`
  - Creates new dinosaur.
- Show Dinosaur - GET `http://localhost:3000/dinosaurs/:id`
  - Displays dinosaur details.
- Edit Dinosaur - PATCH or PUT `http://localhost:3000/dinosaurs/{id}/edit?{params}`
  - Update dinosaur details.
  - Params can be any combination of `name={name}&species={species}&diet_type={diet_type}`
- Destroy Dinosaur - DELETE `http://localhost:3000/dinosaurs/:id`
  - Removes the given dinosaur from the database.


## Suggested Production Thoughts

TODO

## Technologies Used

* Ruby
* Rails
* ActiveRecord
* Bundler
* Rake Gem
* HTML
* CSS
* Bulma
* ES6
* rspec

## License

MIT License

Copyright (c) 2021 Kortney Stinson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.