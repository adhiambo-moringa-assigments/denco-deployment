# DENCO MOVERS
This is a back end repository for a moving service built using Ruby on Rails and MySQL, and deployed on Railways. The app features a users table with a one-to-many relationship to the Booking model, as well as a Service table with a one-to-many relationship to the Booking model. Additionally, the Booking model has a many-to-one relationship with both the User and Service models.

## Getting Started
Prerequisites

Ruby 2.7.4

Rails 6.1.4

MySQL 5.7

## Installation

Install dependencies with (bundle install)

Create the database with (rails db:create)

Migrate the database with (rails db:migrate)

Start the server with (rails s)

## Database Schema
1. User Model:
The User model contains information about users accessing the platform. It has attributes such as name and email, and can have many bookings. It also includes validation rules for the name and email attributes.

2. Service Model:
The Service model contains information about each service available on the platform. It has attributes such as name, description, and price, and can have many bookings. It also includes validation rules for the name, description, and price attributes.

3. Booking Model:
The Booking model contains information about each booking made by a user. It has attributes such as start_time and end_time, and belongs to both a user and a service. It also includes validation rules for the start_time and end_time attributes, as well as custom validation methods to ensure that start_time is not in the past and that end_time is after start_time.

## Usage
The API endpoints can be tested using:(Insomnia and postman).

## API Endpoints

1. Create:

- POST /users: Creates a new user account. Expects user parameters in the request body.

- POST /services: Adds a new service to the list of available services. Expects service parameters in the request body.

- POST /bookings: Creates a new booking for a user. Expects booking parameters in the request body.

2. Read:

- GET /users: Retrieves a list of all users.

- GET /users/:id: Retrieves details of a specific user with the given ID.

- GET /services: Retrieves a list of all available services.

- GET /services/:id: Retrieves details of a specific service with the given ID.

- GET /bookings: Retrieves a list of all bookings made by the currently authenticated user.

- GET /bookings/:id: Retrieves details of a specific booking with the given ID.
Update:

- PUT /users/:id: Modifies an existing user account with the given ID. Expects user parameters in the request body.

- PUT /services/:id: Modifies an existing service with the given ID. Expects service parameters in the request body.

- PUT /bookings/:id: Modifies an existing booking with the given ID. Expects booking parameters in the request body.

3. Delete:

- DELETE /users/:id: Deletes a user account with the given ID.

- DELETE /services/:id: Removes a service from the list of available services with the given ID.

- DELETE /bookings/:id: Cancels a booking with the given ID.


## License
This program is available as open source under the terms of the MIT License.

## Author
Evelyne Atieno