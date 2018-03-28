=begin
#PowerDNS Authoritative HTTP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.13

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for PowerDNS::StatsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatsApi' do
  before do
    # run before each test
    @instance = PowerDNS::StatsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatsApi' do
    it 'should create an instance of StatsApi' do
      expect(@instance).to be_instance_of(PowerDNS::StatsApi)
    end
  end

  # unit tests for get_stats
  # Query statistics.
  # Query PowerDNS internal statistics. Returns a list of BaseStatisticItem derived elements.
  # @param server_id The id of the server to retrieve
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_stats test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
