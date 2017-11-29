Car Tracker API README

## Description
The application keeps track of mileage and service information for multiple cars.  I made it at the request of my girlfriend who currently keeps track of this information in a notebook.

## Website URLs
https://tacostacostacos.github.io/car-tracker-ui/
https://github.com/TacosTacosTacos/car-tracker-ui

https://car-tracker-api.herokuapp.com/
https://github.com/TacosTacosTacos/final_project_api

## Technologies Used
Ruby, Ruby on Rails

NHTSA API
https://vpic.nhtsa.dot.gov/api/

## Development process and problem-solving strategy
Before starting the project, I knew that I was going to have issues with Ember.  The framework has very specific expectations regarding how the programmer works with it, and if you go against those expectations, it will act out.  To address this, I decided to start with a relatively simple idea that I could build up.  I wanted to meet MVP, and then build additional features into the website once I was done.  I also experimented with Ember during my free time in order to get an understanding of its limitations.

Once I began to work on the project, as expected, I ran into problems.  My strategy for solving problems was to try to work through them myself as much as possible.  If I felt like I was getting no where, I moved onto another piece of functionality that needed to be completed.  If I still couldn't resolve the problem after going back to it, I entered a ticket.

## List unsolved problems which would be fixed in future iterations.
There are no unsolved problems.  There are features that I ran out of time, so I couldn't implement.

- The NHTSA has an API available for car information.  I partially setup the application to pull the data, but it isn't fully implemented.
- The functionality to delete cars isn't implemented.  It isn't really necessary, but would be a nice to have
- I would like to make some adjustments to the
- Charting of data
- Notifications when a service is needed on a car based on last service

## Installation instructions for any dependencies
No special dependencies.

  Fork and Clone Repo
  Install dependencies with bundle install.
  Create a .env for sensitive settings (touch .env).
  Generate new development and test secrets (bundle exec rake secret).
  Store them in .env with keys SECRET_KEY_BASE_<DEVELOPMENT|TEST> respectively.
  In order to make requests to your deployed API, you will need to set SECRET_KEY_BASE in the environment of the production API (using heroku config:set or the Heroku dashboard).
  In order to make requests from your deployed client application, you will need to set CLIENT_ORIGIN in the environment of the production API (e.g. heroku config:set CLIENT_ORIGIN=Fhttps://<github-username>.github.io).
  Setup your database with:
  bin/rake db:drop (if it already exists)
  bin/rake db:create
  bin/rake db:migrate
  bin/rake db:seed
  bin/rake db:examples
  Run the API server with bin/rails server or bundle exec rails server.

## Link to Entity Relationship Diagram (ERD).
![https://ibb.co/jKCotR](https://preview.ibb.co/c76sL6/erdplus_diagram_4.png)

## A catalog of routes (paths and methods) that the API expects.
Example CURL requests can be found within the scripts folder

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

### Cars

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/cars`                | `cars#index`      |
| GET    | `/cars/:id`            | `cars#show`       |
| POST   | `/cars`                | `cars#create`     |
| PATCH  | `/cars/:id`            | `cars#update`     |
| DELETE | `/cars/:id`            | `cars#delete`     |


### Makes

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/makes`               | `makes#index`     |
| GET    | `/makes/:id`           | `makes#show`      |

### Mileages

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/mileages`            | `mileages#index`  |
| GET    | `/mileages/:id`        | `mileages#show`   |
| POST   | `/mileages`            | `mileages#create` |
| PATCH  | `/mileages/:id`        | `mileages#update` |
| DELETE | `/mileages/:id`        | `mileages#delete` |

### NHTSAController

| Verb   | URI Pattern        | Controller#Action    |
|--------|--------------------|----------------------|
| GET    | `/nhtsa`           | `nhtsa#retrieveData` |

### Service Types Controller

| Verb   | URI Pattern        | Controller#Action     |
|--------|--------------------|-----------------------|
| GET    | `/service_types`   | `service_types#index` |


### Service

| Verb   | URI Pattern           | Controller#Action |
|--------|-----------------------|-------------------|
| GET    | `/service`            | `service#index`   |
| GET    | `/service/:id`        | `service#show`    |
| POST   | `/service`            | `service#create`  |
| PATCH  | `/service/:id`        | `service#update`  |
| DELETE | `/service/:id`        | `service#delete`  |
