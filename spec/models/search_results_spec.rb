=begin
#PowerDNS Authoritative HTTP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.13

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for PowerDNS::SearchResults
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchResults' do
  before do
    # run before each test
    @instance = PowerDNS::SearchResults.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchResults' do
    it 'should create an instance of SearchResults' do
      expect(@instance).to be_instance_of(PowerDNS::SearchResults)
    end
  end
end
