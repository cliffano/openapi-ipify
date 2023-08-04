/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 3.3.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.6.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * HttpContent.h
 *
 * This class represents a single item of a multipart-formdata request.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_HttpContent_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_HttpContent_H_



#include <cpprest/details/basic_types.h>

#include <memory>

namespace org {
namespace openapitools {
namespace client {
namespace model {

class  HttpContent
{
public:
    HttpContent();
    virtual ~HttpContent();

    virtual utility::string_t getContentDisposition() const;
    virtual void setContentDisposition( const utility::string_t& value );

    virtual utility::string_t getName() const;
    virtual void setName( const utility::string_t& value );

    virtual utility::string_t getFileName() const;
    virtual void setFileName( const utility::string_t& value );

    virtual utility::string_t getContentType() const;
    virtual void setContentType( const utility::string_t& value );

    virtual std::shared_ptr<std::istream> getData() const;
    virtual void setData( std::shared_ptr<std::istream> value );

    virtual void writeTo( std::ostream& stream );

protected:
    // NOTE: no utility::string_t here because those strings can only contain ascii
    utility::string_t m_ContentDisposition;
    utility::string_t m_Name;
    utility::string_t m_FileName;
    utility::string_t m_ContentType;
    std::shared_ptr<std::istream> m_Data;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_HttpContent_H_ */
