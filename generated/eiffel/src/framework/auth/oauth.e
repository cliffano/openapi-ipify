note
 description:"[
		openapi-ipify
 		OpenAPI client for ipify, a simple public IP address API
  		OpenAPI spec version: 0.9.0
 	    Contact: blah@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class
	OAUTH

inherit

	AUTHENTICATION

feature -- Access

	access_token: detachable STRING_32

feature -- Change Element

	set_access_token (a_token: STRING_32)
			-- Set `access_token' with `a_token'.
		do
			access_token := a_token
		ensure
			access_token_set: access_token = a_token
		end

	apply_to_params(a_query_params: LIST [TUPLE [name:STRING; value:STRING]]; a_header_params: STRING_TABLE [STRING])
   			-- <Precursor>.
		do
			if attached access_token as l_access_token then
				a_header_params.force ("Bearer " + l_access_token,"Authorization" )
			end
		end
end
