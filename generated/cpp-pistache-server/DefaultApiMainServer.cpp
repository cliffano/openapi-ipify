/**
* openapi-ipify
* OpenAPI client for ipify, a simple public IP address API
*
* OpenAPI spec version: 0.9.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/

#include "pistache/endpoint.h"
#include "pistache/http.h"
#include "pistache/router.h"
#include "DefaultApiImpl.h"

using namespace org::openapitools::server::api;

int main() {
    Pistache::Address addr(Pistache::Ipv4::any(), Pistache::Port(8080));

    DefaultApiImpl server(addr);
    server.init(2);
    server.start();

    server.shutdown();
}

