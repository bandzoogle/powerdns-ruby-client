=begin
#PowerDNS Authoritative HTTP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.13

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for PowerDNS::ServersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServersApi' do
  before do
    # run before each test
    @instance = PowerDNS::ServersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServersApi' do
    it 'should create an instance of ServersApi' do
      expect(@instance).to be_instance_of(PowerDNS::ServersApi)
    end
  end

  # unit tests for list_server
  # List a server
  # @param server_id The id of the server to retrieve
  # @param [Hash] opts the optional parameters
  # @return [Server]
  describe 'list_server test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_servers
  # List all servers
  # @param [Hash] opts the optional parameters
  # @return [Array<Server>]
  describe 'list_servers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
