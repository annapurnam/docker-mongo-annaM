This project is to dockerize the application code from "https://github.com/madhums/node-express-mongoose-demo"

1) Dockerize https://github.com/madhums/node-express-mongoose-demo and expose the site on a non-standard port (not 80/443).
2) Configure S3 for image storage and any other settings defined in the README.md file. When the app is in production mode it expects the MongoDB connection string to be in the MONGOHQ_URL environment variable.
3) Add a NGINX container acting as a reverse proxy that routes requests sent to it on port 80/443 to the Node app container.
4) Any supporting services such as MongoDB should also be deployed as Docker containers (Don't use MongoHQ as the app's environment variable suggests).


  To run this

  Development Env:

  docker-compose build
  docker-compose up

  Prodcution Env:

  export NODE_ENV=production
  export MONGOHQ_URL=mongo

  docker-compose build
  docker-compose up