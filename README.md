# README

The Program Obras Bibliograficas aim to format the Author's name, type the names according to the quantity informed.

* Ruby version
    2.6.5
* System dependencies
    API Rails 6.0.2
    bundle install after clone of this project
* Configuration

* Database creation
    In the folder /obras_bibliograficas, run
    create db:create
    create db:migrate

* Database initialization
    Sqlite

* How to run the test suite
    rails test test/models/

* Services (job queues, cache servers, search engines, etc.)

* Instructions for using API
    - In the folder /obras_bibliograficas, run: rails s
    - Using Insomnia, Postman or Curl software.
    - It is necessary to send two parameters according to the example.
    - localhost:3000/api/v1/authors/?number_names=2&name=joao chaves
    - url default GET: localhost:3000/api/v1/authors/
    - two parameters: number_names and name

* ...