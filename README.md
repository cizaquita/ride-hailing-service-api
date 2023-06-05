# ride-hailing-service-api
Ruby - Sinatra JSON RESTful API for ride hailing service.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

  - Install Docker
  * Using Docker for Development
  
## Run locally
1. Install Docker
2. Create .env file with the files of example.env
3. Run ```docker compose build```
4. Run ```docker compose up```
5. Server will be ready to listen request to the port 9090

## Run tests
1. ```docker compose -f docker-compose.test.yml build```
2. ```docker compose -f docker-compose.test.yml up --remove-orphans --force-recreate```


## Postman endpoints

[In this link you'll find the posible methods and the body for respective request](https://elements.getpostman.com/redirect?entityId=8370910-61eaf983-fc8c-4756-927a-913605ea3592&entityType=collection)


## Built With

* [Sinatra](https://github.com/sinatra/sinatra) - Framework used
* [PostgreSQL](https://github.com/ged/ruby-pg/) - Database


## Authors

* **Cristian Izaquita**   - *Full stack developer* - [Cizaquita](https://github.com/cizaquita)

#### References
[DaniPB](https://github.com/DaniPB/ride_hailing_app), [ysn-77](https://github.com/ysn-77/fs2_ride_hailing_app_server), [Regniek](https://github.com/Regniek/app_ride-hailing), [keinydev](https://github.com/keinydev/Ridefy), [svitery](https://github.com/svitery/ride-hailing-api)
[documentation](https://docs.wompi.co/docs/colombia/inicio-rapido/)