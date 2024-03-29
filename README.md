# Odin Flight Booker

## Project Requirements

This is a one-way flight booker.

The first three steps of a typical checkout process for booking a one-way flight:

1.  Enter the desired dates and airports and click “Search”.
2.  Choose from among a list of eligible flights.
3.  Enter passenger information for all passengers.
4.  ~~Enter billing information.~~

Step 4 would be done via integration of something like Paypal, via a gem or an SDK or Stripe.

[Link to project instructions](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-advanced-forms).

[View the application in browser (30 seconds for the Heroku Dyno to wake up)](https://mighty-badlands-64879.herokuapp.com/).

## Application Flow

1. Search for a flight.
2. Pick a flight.
3. Enter Passenger information.
4. Receive email confirmation.
5. Display booking information.

## Demo

![odin-flight-booker demo](gif/odin-flight-booker-demo.gif)

## Features
<ul>
  <li>Implented PostgreSQL database with a Ruby on Rails application.</li>
  <li>Using Heroku scheduler, two rake tasks are scheduled to continuously update flights in the database.</li>
  <li>Wrote model, integration and request specs using RSpec.</li>
  <li>Utilized Rails ActionMailer to send confirmation emails after succesfully booking a flight.</li>
</ul>

## Installation

Prerequisites: Rails, Git, and Bundler.
1. Clone the repository. ([Instructions](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github/cloning-a-repository))
2. Navigate into this project's directory. ```cd flight_booker```
3. Install the required gems. ```bundle install```
4. Setup the database. ```rails db:create db:migrate db:seed```
6. Start the local server. ```rails server```
7. Open a browser and vist ```http://localhost:3000```.

## Running Specs
* Navigate into the project's directory and type `rspec` to run the entire spec suite.
* See the [RSpec documentation](https://github.com/rspec/rspec-rails#running-specs) for more ways to run specs.





