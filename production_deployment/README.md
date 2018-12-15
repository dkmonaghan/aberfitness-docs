# Deploying Aber Fitness to Production

## Hardware Requirements

* Intel Core i5 2320 or better
* 4GB RAM or more
* 4GB Free hard disk space, plus additional space for your database.

## Software Requirements

The full deployment of this Docker stack has only been verified as working on Debian 4.9.  It will almost certainly work on most other Linux distributions, and possibly on Windows.

* Docker >= 18.09.0
* Docker-Compose >= 1.8.0
* Git

## Deployment Steps

1. Clone the `deployment` repository to the docker host.
1. Copy the `example_env` folder to `env`, and modify the values within each `[service_name].env` file in accordance with that application's documentation.
1. Create a file in the `deployment` folder simply called `.env`.  Refer to the [Environment Variables](environment_variables.md) documentation for the required contents.
1. Create the required certificates by following the instructions in the [Certificates](certificates.md) documentation.
1. Pull the Docker images using `docker-compose pull`.
1. Start the stack using `docker-compose up -d`.
1. Run the provided `create_admin.sql` file to create an Administrator account with the username `admin@example.com` and password `Admin-999`.
1. Log in and immediately change the administrator email address and password.
1. Create the API resources and Clients in accordance with the [OAuth Configuration](oauth_configuration.md) documentation.
1. Re-visit the `[service_name].env` files you edited earlier to ensure that the Client ID and Client Secret values are consistent with the clients you just created in Gatekeeper.
1. Restart the stack using `docker-compose down && docker-compose up -d`
