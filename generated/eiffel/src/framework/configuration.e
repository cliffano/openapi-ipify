note
 description:"[
		ipify
 		OpenAPI client for ipify, a simple public IP address API
  		OpenAPI spec version: 0.9.0
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	CONFIGURATION

feature -- API client

	default_api_client: API_CLIENT
		do
			create Result.make
		end
end