# Environment Variables

Environment variables are used to configure docker-compose and the services being launched.

## Docker-Compose .env

A top level `.env` file is required, which provides environment variables to the whole docker-compose file.
```env
DEPLOYMENT_TAG=staging # valid values staging or latest
Layout__LayoutServiceUrl=https://example.com/layout-service/ # url to the layout service
Audit__GladosUrl=https://example.com/glados/ # url to the audit service
```

## Service .env

Each service has an `.env` file within the `env` folder, i.e. for gatekeeper the env file is `env/gatekeeper.env`.  Environment variables set within this file are specific to containers running that service only.
Some example .env files are included in the `example_env` folder, however these may not be up-to-date with the latest variables for the service being deployed, so check the service-specific documentation to see which environment variables need setting.
