=begin
ipify

OpenAPI client for ipify, a simple public IP address API

OpenAPI spec version: 0.9.0
Generated by: https://github.com/openapitools/openapi-generator.git

=end


class Ip < ApplicationRecord
  validates_presence_of :ip

end