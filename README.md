### Contentful API

## Usage

 - copy file `.env.dist` to `.env`
 - run `docker-compose up` to build the image and start the application
 - open `http://localhost:3000/recipes` on your browser

## Unit tests

 - access the container using `docker exec -it app bash`
 - run `RAILS_ENV=test && rails test`