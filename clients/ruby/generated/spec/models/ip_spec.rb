=begin
#openapi-ipify

#OpenAPI client for ipify, a simple public IP address API

The version of the OpenAPI document: 3.3.1-pre.0
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenApiIpifyClient::Ip
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenApiIpifyClient::Ip do
  let(:instance) { OpenApiIpifyClient::Ip.new }

  describe 'test an instance of Ip' do
    it 'should create an instance of Ip' do
      expect(instance).to be_instance_of(OpenApiIpifyClient::Ip)
    end
  end
  describe 'test attribute "ip"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
