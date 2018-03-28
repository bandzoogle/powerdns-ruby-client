=begin
#PowerDNS Authoritative HTTP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.13

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for PowerDNS::ZonemetadataApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ZonemetadataApi' do
  before do
    # run before each test
    @instance = PowerDNS::ZonemetadataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ZonemetadataApi' do
    it 'should create an instance of ZonemetadataApi' do
      expect(@instance).to be_instance_of(PowerDNS::ZonemetadataApi)
    end
  end

  # unit tests for create_metadata
  # Creates a set of metadata entries
  # Creates a set of metadata entries of given kind for the zone. Existing metadata entries for the zone with the same kind are not overwritten.
  # @param server_id The id of the server to retrieve
  # @param zone_id 
  # @param metadata List of metadata to add/create
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_metadata test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_metadata
  # Delete all items of a single kind of domain metadata.
  # 
  # @param server_id The id of the server to retrieve
  # @param zone_id The id of the zone to retrieve
  # @param metadata_kind ???
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_metadata test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_metadata
  # Get the content of a single kind of domain metadata as a list of MetaData objects.
  # 
  # @param server_id The id of the server to retrieve
  # @param zone_id The id of the zone to retrieve
  # @param metadata_kind ???
  # @param [Hash] opts the optional parameters
  # @return [Metadata]
  describe 'get_metadata test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_metadata
  # Get all the MetaData associated with the zone.
  # 
  # @param server_id The id of the server to retrieve
  # @param zone_id The id of the zone to retrieve
  # @param [Hash] opts the optional parameters
  # @return [Array<Metadata>]
  describe 'list_metadata test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for modify_metadata
  # Modify the content of a single kind of domain metadata.
  # 
  # @param server_id The id of the server to retrieve
  # @param zone_id 
  # @param metadata_kind The kind of metadata
  # @param metadata metadata to add/create
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'modify_metadata test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end