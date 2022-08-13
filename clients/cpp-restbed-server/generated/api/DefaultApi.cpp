/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 3.0.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.1.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include <corvusoft/restbed/byte.hpp>
#include <corvusoft/restbed/string.hpp>
#include <corvusoft/restbed/settings.hpp>
#include <corvusoft/restbed/request.hpp>
#include <corvusoft/restbed/uri.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string.hpp>

#include "DefaultApi.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

DefaultApiException::DefaultApiException(int status_code, std::string what)
  : m_status(status_code),
    m_what(what)
{

}
int DefaultApiException::getStatus() const
{
    return m_status;
}
const char* DefaultApiException::what() const noexcept
{
    return m_what.c_str();
}


template<class MODEL_T>
std::shared_ptr<MODEL_T> extractJsonModelBodyParam(const std::string& bodyContent)
{
    std::stringstream sstream(bodyContent);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream, pt);

    auto model = std::make_shared<MODEL_T>(pt);
    return model;
}

template<class MODEL_T>
std::vector<std::shared_ptr<MODEL_T>> extractJsonArrayBodyParam(const std::string& bodyContent)
{
    std::stringstream sstream(bodyContent);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream, pt);

    auto arrayRet = std::vector<std::shared_ptr<MODEL_T>>();
    for (const auto& child: pt) {
        arrayRet.emplace_back(std::make_shared<MODEL_T>(child.second));
    }
    return arrayRet;
}

template <class KEY_T, class VAL_T>
std::string convertMapResponse(const std::map<KEY_T, VAL_T>& map)
{
    boost::property_tree::ptree pt;
    for(const auto &kv: map) {
    pt.push_back(boost::property_tree::ptree::value_type(
        boost::lexical_cast<std::string>(kv.first),
        boost::property_tree::ptree(
        boost::lexical_cast<std::string>(kv.second))));
    }
    std::stringstream sstream;
    write_json(sstream, pt);
    std::string result = sstream.str();
    return result;
}

DefaultApiResource::DefaultApiResource(const std::string& context /* = "" */)
{
	this->set_path(context + "//");
	this->set_method_handler("GET",
		std::bind(&DefaultApiResource::handler_GET_internal, this,
			std::placeholders::_1));
}

DefaultApiResource::~DefaultApiResource()
{
}

std::pair<int, std::string> DefaultApiResource::handleDefaultApiException(const DefaultApiException& e)
{
    return std::make_pair<int, std::string>(e.getStatus(), e.what());
}

std::pair<int, std::string> DefaultApiResource::handleStdException(const std::exception& e)
{
    return std::make_pair<int, std::string>(500, e.what());
}

std::pair<int, std::string> DefaultApiResource::handleUnspecifiedException()
{
    return std::make_pair<int, std::string>(500, "Unknown exception occurred");
}

void DefaultApiResource::setResponseHeader(const std::shared_ptr<restbed::Session>& session, const std::string& header)
{
    session->set_header(header, "");
}

void DefaultApiResource::returnResponse(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result, const std::string& contentType)
{
    session->close(status, result, { {"Connection", "close"}, {"Content-Type", contentType} });
}

void DefaultApiResource::defaultSessionClose(const std::shared_ptr<restbed::Session>& session, const int status, const std::string& result)
{
    session->close(status, result, { {"Connection", "close"} });
}

void DefaultApiResource::handler_GET_internal(const std::shared_ptr<restbed::Session> session)
{
    const auto request = session->get_request();


    // Getting the query params
    const std::string format = getQueryParam_format(request);
    const std::string callback = getQueryParam_callback(request);


    int status_code = 500;
    std::shared_ptr<Ip> resultObject = std::make_shared<Ip>();
    std::string result = "";

    try {
        std::tie(status_code, resultObject) =
             handler_GET(format, callback);
    }
    catch(const DefaultApiException& e) {
        std::tie(status_code, result) = handleDefaultApiException(e);
    }
    catch(const std::exception& e) {
        std::tie(status_code, result) = handleStdException(e);
    }
    catch(...) {
        std::tie(status_code, result) = handleUnspecifiedException();
    }

    if (status_code == 200) {
        result = resultObject->toJsonString();

        const constexpr auto contentType = "application/json";
        returnResponse(session, 200, result.empty() ? "Your public IP address" : result, contentType);
        return;
    }
    defaultSessionClose(session, status_code, result);
}


std::pair<int, std::shared_ptr<Ip>> DefaultApiResource::handler_GET(
        std::string const & format, std::string const & callback)
{
    throw DefaultApiException(501, "Not implemented");
}


std::string DefaultApiResource::extractBodyContent(const std::shared_ptr<restbed::Session>& session) {
  const auto request = session->get_request();
  int content_length = request->get_header("Content-Length", 0);
  std::string bodyContent;
  session->fetch(content_length,
                 [&bodyContent](const std::shared_ptr<restbed::Session> session,
                                const restbed::Bytes &body) {
                   bodyContent = restbed::String::format(
                       "%.*s\n", (int)body.size(), body.data());
                 });
  return bodyContent;
}

DefaultApi::DefaultApi(std::shared_ptr<restbed::Service> const& restbedService)
: m_service(restbedService)
{
}

DefaultApi::~DefaultApi() {}

void DefaultApi::setDefaultApiResource(std::shared_ptr<DefaultApiResource> spDefaultApiResource) {
    m_spDefaultApiResource = spDefaultApiResource;
    m_service->publish(m_spDefaultApiResource);
}


void DefaultApi::publishDefaultResources() {
    if (!m_spDefaultApiResource) {
        setDefaultApiResource(std::make_shared<DefaultApiResource>());
    }
}

std::shared_ptr<restbed::Service> DefaultApi::service() {
    return m_service;
}


}
}
}
}
