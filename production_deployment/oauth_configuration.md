# OAuth Configuration

## API Resources

Create the following API Resources:

* gatekeeper
* health_data_repository
* glados
* challenges
* user_groups
* comms
* booking_facilities
* fitbit_ingest_service
* ladders


## Clients

Create the following Clients:

* health_data_repository
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/health-data-repository/signin-oidc
    * **Scopes:** openid profile offline_access glados gatekeeper comms
* health_dashboard
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/dashboard/signin-oidc
    * **Scopes:** openid profile offline_access challenges health_data_repository user_groups gatekeeper fitbit_ingest_service
* fitbit_ingest_service
    * **Grant Types:** authorization_code client_credentials
    * **Redirect URIs:** https://your_domain/fitbit-ingest-service/LoginPage
    * **Scopes:** openid profile offline_access health_data_repository glados
* comms
    * **Grant Types:** client_credentials
    * **Redirect URIs:** https://your_domain/comms
    * **Scopes:** gatekeeper
* booking_facilities
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/booking-facilities/signin-oidc
    * **Scopes:** openid profile offline_access comms gatekeeper glados
* gatekeeper
    * **Grant Types:** client_credentials
    * **Redirect URIs:** https://your_domain/gatekeeper
    * **Scopes:** comms glados
* challenges
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/challenges/signin-oidc
    * **Scopes:** openid profile offline_access user_groups health_data_repository comms gatekeeper glados
* user_groups
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/user-groups/signin-oidc
    * **Scopes:** openid profile offline_access gatekeeper glados
* glados
    * **Grant Types:** authorization_code client_credentials
    * **Redirect URIs:** https://your_domain/glados/login.xhtml
    * **Scopes:** openid profile offline_access glados
* ladders
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/ladders/signin-oidc
    * **Scopes:** openid profile offline_access booking_facilities gatekeeper comms
* layout_service
    * **Grant Types:** hybrid client_credentials
    * **Redirect URIs:** https://your_domain/layout-service/signin-oidc
    * **Scopes:** openid profile offline_access
