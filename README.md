# README

## Property Listing Management App(GraphQL + Rails API)

This app utilises the power of rails & GraphQL combo. It is a Property Listing Management mock app that allows users to perform CRUD(Create Read Update Delete) on Properties, Furnishings and Valuations. The purpose of the app was to get my hands dirty on the core concepts of GraphQL like Types, Queries, Mutations and so on. Let's get it running on your machine

### Setup

To get started with this project, follow these steps:

Clone this repository to your local machine:

Install Ruby 2.7.2 and Rails 6.1.7 if not already installed.

`git clone https://github.com/Luey-Ny0ike/property-listing-challenge.git`

Navigate to the project directory:

`cd property-listing-challenge`

Install the required gems:

`bundle install`

Setup the database:

`rails db:setup`

or if you prefer:

`rails db:create`

`rails db:migrate`

`rails db:seed`

Start the server
`rails s`

That's it. If all previous steps were successful, you should be able to access the api from a single endpoint. http://localhost:3000/graphql. The end point is a post request.

### Contributing

Contributions to this project are welcome! To contribute, please fork the repository and submit a pull request.

### License

This project is licensed under the MIT License.
