/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include <corvusoft/restbed/byte.hpp>
#include <corvusoft/restbed/string.hpp>
#include <corvusoft/restbed/settings.hpp>
#include <corvusoft/restbed/request.hpp>

#include "DefaultApi.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

DefaultApi::DefaultApi() {
	std::shared_ptr<DefaultApiResource> spDefaultApiResource = std::make_shared<DefaultApiResource>();
	this->publish(spDefaultApiResource);
	
}

DefaultApi::~DefaultApi() {}

void DefaultApi::startService(int const& port) {
	std::shared_ptr<restbed::Settings> settings = std::make_shared<restbed::Settings>();
	settings->set_port(port);
	settings->set_root("");
	
	this->start(settings);
}

void DefaultApi::stopService() {
	this->stop();
}

DefaultApiResource::DefaultApiResource()
{
	this->set_path("//");
	this->set_method_handler("GET",
		std::bind(&DefaultApiResource::GET_method_handler, this,
			std::placeholders::_1));
}

DefaultApiResource::~DefaultApiResource()
{
}

void DefaultApiResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			
			// Getting the query params
			const std::string format = request->get_query_parameter("format", "");
			const std::string callback = request->get_query_parameter("callback", "");

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Your public IP address", { {"Connection", "close"} });
				return;
			}

}




}
}
}
}

