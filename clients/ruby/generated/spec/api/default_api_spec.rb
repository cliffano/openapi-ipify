=begin
#openapi-ipify

#OpenAPI client for ipify, a simple public IP address API

The version of the OpenAPI document: 5.0.1-pre.0
Contact: blah@cliffano.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenApiIpifyClient::DefaultApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DefaultApi' do
  before do
    # run before each test
    @api_instance = OpenApiIpifyClient::DefaultApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DefaultApi' do
    it 'should create an instance of DefaultApi' do
      expect(@api_instance).to be_instance_of(OpenApiIpifyClient::DefaultApi)
    end
  end

  # unit tests for get_ip
  # Get your public IP address
  # @param [Hash] opts the optional parameters
  # @option opts [String] :format Response format
  # @option opts [String] :callback JSONP callback function name
  # @return [Ip]
  describe 'get_ip test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
