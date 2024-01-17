# Concierge service

### A small service which suppose to create enquiries from the potential customers.

Requirements:
 - Ruby 3.0+
 - Ruby on Rails 7+

Installation:
  - Clone the project and go to it's directory.
  - Run `bundle` to install all dependencies.
  - Run `rails db:migrate`.
  - Run `bin/dev` to run the development server.

#### Idea:
- Inquiries supposed to be created by the customers and then reviewed by the staff.
  - Initially `Inquiry#status` is set to `new`.
  - After the review and a call with the customer `Listing`s are created by the staff.
    - Value `Inquiry#status` updated to `processed`.
  - In case customer decided not to proceed with us, then staff sets `Inquiry#status` to `closed`.

# Initial project structure, main models:
 - `Inquiry` - customer inquiry.
 - `Listing` - listings created based on the inquiry.
 - `User` - stuff accounts, review/listing of `Inquiries` allowed only for stuff.

### What is not finished
 - `Rspec`
 - `factory_bot`
 - `Devise`
 - Custom `devise` views so they support `tailwind`
 - `pundit` for access-control
 - Testing infrastructure, tests and factories
 - Proper routing
 - Switch to postgres
 - Dockerize
 - ...