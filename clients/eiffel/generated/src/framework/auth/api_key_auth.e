note
 description:"[
		openapi-ipify
 		OpenAPI client for ipify, a simple public IP address API
  		The version of the OpenAPI document: 4.0.1-pre.0
 	    Contact: blah@cliffano.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class
	API_KEY_AUTH

inherit

	AUTHENTICATION

create
	make

feature {NONE} -- Initialization

	make (a_location: STRING; a_param_name: STRING)
		do
			location := a_location
			param_name := a_param_name
		end

feature -- Access

	location: STRING
	param_name: STRING

	api_key: detachable STRING_32
	api_key_prefix: detachable STRING_32

feature -- Change Element

	set_api_key (a_api_key: STRING_32)
			-- Set `api_key' with `a_api_key'.
		do
			api_key := a_api_key
		ensure
			api_key_set: api_key = a_api_key
		end

	set_api_key_prefix (a_api_key_prefix: STRING_32)
			-- Set `api_key_prefix' with `a_api_key_prefix'.
		do
			api_key_prefix := a_api_key_prefix
		ensure
			api_key_prefix_set: api_key_prefix = a_api_key_prefix
		end

feature -- Access

   apply_to_params(a_query_params: LIST [TUPLE [name:READABLE_STRING_8; value:READABLE_STRING_8]]; a_header_params: STRING_TABLE [READABLE_STRING_8])
   			-- <Precursor>.
   		local
   			l_value: STRING_32
   		do
   			if attached api_key as l_api_key then
   				if attached api_key_prefix as l_api_key_prefix then
   					create l_value.make_from_string (l_api_key_prefix)
   					l_value.append_string (" ")
   					l_value.append_string (l_api_key)
   				else
   					create l_value.make_from_string (l_api_key)
				end
   			end
   		end

end
