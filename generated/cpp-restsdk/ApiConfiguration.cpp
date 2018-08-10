/**
 * ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * OpenAPI spec version: 0.9.0
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "ApiConfiguration.h"

namespace org {
namespace openapitools {
namespace client {
namespace api {

ApiConfiguration::ApiConfiguration()
{
}

ApiConfiguration::~ApiConfiguration()
{
}

web::http::client::http_client_config& ApiConfiguration::getHttpConfig()
{
    return m_HttpConfig;
}

void ApiConfiguration::setHttpConfig( web::http::client::http_client_config& value )
{
    m_HttpConfig = value;
}

utility::string_t ApiConfiguration::getBaseUrl() const
{
    return m_BaseUrl;
}

void ApiConfiguration::setBaseUrl( const utility::string_t value )
{
    m_BaseUrl = value;
}

utility::string_t ApiConfiguration::getUserAgent() const
{
    return m_UserAgent;
}

void ApiConfiguration::setUserAgent( const utility::string_t value )
{
    m_UserAgent = value;
}

std::map<utility::string_t, utility::string_t>& ApiConfiguration::getDefaultHeaders()
{
    return m_DefaultHeaders;
}

utility::string_t ApiConfiguration::getApiKey( const utility::string_t& prefix) const
{
    auto result = m_ApiKeys.find(prefix);
    if( result != m_ApiKeys.end() )
    {
        return result->second;
    }
    return utility::conversions::to_string_t("");
}

void ApiConfiguration::setApiKey( const utility::string_t& prefix, const utility::string_t& apiKey )
{
    m_ApiKeys[prefix] = apiKey;
}

}
}
}
}
