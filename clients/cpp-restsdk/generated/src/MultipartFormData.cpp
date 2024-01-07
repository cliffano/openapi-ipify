/**
 * openapi-ipify
 * OpenAPI client for ipify, a simple public IP address API
 *
 * The version of the OpenAPI document: 5.0.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.2.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "CppRestOpenAPIClient/MultipartFormData.h"
#include "CppRestOpenAPIClient/ModelBase.h"

#include <boost/uuid/random_generator.hpp>
#include <boost/uuid/uuid_io.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace model {

MultipartFormData::MultipartFormData()
{
    utility::stringstream_t uuidString;
    uuidString << boost::uuids::random_generator()();
    m_Boundary = uuidString.str();
}

MultipartFormData::MultipartFormData(const utility::string_t& boundary)
    : m_Boundary(boundary)
{

}

MultipartFormData::~MultipartFormData()
{
}

utility::string_t MultipartFormData::getBoundary()
{
    return m_Boundary;
}

void MultipartFormData::add( std::shared_ptr<HttpContent> content )
{
    m_Contents.push_back( content );
    m_ContentLookup[content->getName()] = content;
}

bool MultipartFormData::hasContent(const utility::string_t& name) const
{
    return m_ContentLookup.find(name) != m_ContentLookup.end();
}

std::shared_ptr<HttpContent> MultipartFormData::getContent(const utility::string_t& name) const
{
    auto result = m_ContentLookup.find(name);
    if(result == m_ContentLookup.end())
    {
        return std::shared_ptr<HttpContent>(nullptr);
    }
    return result->second;
}

void MultipartFormData::writeTo( std::ostream& target )
{
    for ( size_t i = 0; i < m_Contents.size(); i++ )
    {
        std::shared_ptr<HttpContent> content = m_Contents[i];

        // boundary
        target << "\r\n" << "--" << utility::conversions::to_utf8string( m_Boundary ) << "\r\n";

        // headers
        target << "Content-Disposition: " << utility::conversions::to_utf8string( content->getContentDisposition() );
        if ( content->getName().size() > 0 )
        {
            target << "; name=\"" << utility::conversions::to_utf8string( content->getName() ) << "\"";
        }
        if ( content->getFileName().size() > 0 )
        {
            target << "; filename=\"" << utility::conversions::to_utf8string( content->getFileName() ) << "\"";
        }
        target << "\r\n";

        if ( content->getContentType().size() > 0 )
        {
            target << "Content-Type: " << utility::conversions::to_utf8string( content->getContentType() ) << "\r\n";
        }

        target << "\r\n";

        // body
        std::shared_ptr<std::istream> data = content->getData();

		data->seekg( 0, data->end );
		std::vector<char> dataBytes( data->tellg() );

		data->seekg( 0, data->beg );
		data->read( &dataBytes[0], dataBytes.size() );

		std::copy( dataBytes.begin(), dataBytes.end(), std::ostreambuf_iterator<char>( target ) );
    }

    target << "\r\n--" << utility::conversions::to_utf8string( m_Boundary ) << "--\r\n";
}

}
}
}
}
