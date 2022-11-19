/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 3.2.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.2.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestOpenAPIClient/model/Ip.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Ip::Ip()
{
    m_Ip = utility::conversions::to_string_t("");
    m_IpIsSet = false;
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
    
    if(m_IpIsSet)
    {
        val[utility::conversions::to_string_t(U("ip"))] = ModelBase::toJson(m_Ip);
    }

    return val;
}

bool Ip::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("ip"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("ip")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setIp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setIp);
            setIp(refVal_setIp);
        }
    }
    return ok;
}

void Ip::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_IpIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("ip")), m_Ip));
    }
}

bool Ip::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("ip"))))
    {
        utility::string_t refVal_setIp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("ip"))), refVal_setIp );
        setIp(refVal_setIp);
    }
    return ok;
}

utility::string_t Ip::getIp() const
{
    return m_Ip;
}

void Ip::setIp(const utility::string_t& value)
{
    m_Ip = value;
    m_IpIsSet = true;
}

bool Ip::ipIsSet() const
{
    return m_IpIsSet;
}

void Ip::unsetIp()
{
    m_IpIsSet = false;
}
}
}
}
}

