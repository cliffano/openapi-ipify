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



#include "Ip.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

Ip::Ip()
{
    m_Ip = utility::conversions::to_string_t("");
}

Ip::~Ip()
{
}

void Ip::validate()
{
    // TODO: implement validation
}

web::json::value Ip::toJson() const
{
    web::json::value val = web::json::value::object();

    val[utility::conversions::to_string_t("ip")] = ModelBase::toJson(m_Ip);

    return val;
}

void Ip::fromJson(web::json::value& val)
{
    setIp(ModelBase::stringFromJson(val[utility::conversions::to_string_t("ip")]));
}

void Ip::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("ip"), m_Ip));
}

void Ip::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    setIp(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("ip"))));
}

utility::string_t Ip::getIp() const
{
    return m_Ip;
}


void Ip::setIp(utility::string_t value)
{
    m_Ip = value;
    
}
}
}
}
}

