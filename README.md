# powerdns

Generated with: java -jar swagger-codegen-cli.jar generate -l ruby -i ./authoritative-api-swagger.yaml -c ./opts.json

PowerDNS - the Ruby gem for the PowerDNS Authoritative HTTP API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.13
- Package version: 0.0.1
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build powerdns.gemspec
```

Then either install the gem locally:

```shell
gem install ./powerdns-0.0.1.gem
```
(for development, run `gem install --dev ./powerdns-0.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'powerdns', '~> 0.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'powerdns', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'powerdns'

# Setup authorization
PowerDNS.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = PowerDNS::ConfigApi.new

server_id = "server_id_example" # String | The id of the server to retrieve


begin
  #Returns all ConfigSettings for a single server
  result = api_instance.get_config(server_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ConfigApi->get_config: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8081/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PowerDNS::ConfigApi* | [**get_config**](docs/ConfigApi.md#get_config) | **GET** /servers/{server_id}/config | Returns all ConfigSettings for a single server
*PowerDNS::ConfigApi* | [**get_config_setting**](docs/ConfigApi.md#get_config_setting) | **GET** /servers/{server_id}/config/{config_setting_name} | Returns a specific ConfigSetting for a single server
*PowerDNS::SearchApi* | [**search_data**](docs/SearchApi.md#search_data) | **GET** /servers/{server_id}/search-data | Search the data inside PowerDNS
*PowerDNS::SearchApi* | [**search_log**](docs/SearchApi.md#search_log) | **GET** /servers/{server_id}/search-log | Query the log, filtered by search_term.
*PowerDNS::ServersApi* | [**list_server**](docs/ServersApi.md#list_server) | **GET** /servers/{server_id} | List a server
*PowerDNS::ServersApi* | [**list_servers**](docs/ServersApi.md#list_servers) | **GET** /servers | List all servers
*PowerDNS::StatsApi* | [**get_stats**](docs/StatsApi.md#get_stats) | **GET** /servers/{server_id}/statistics | Query statistics.
*PowerDNS::ZonecryptokeyApi* | [**create_cryptokey**](docs/ZonecryptokeyApi.md#create_cryptokey) | **POST** /servers/{server_id}/zones/{zone_id}/cryptokeys | Creates a Cryptokey
*PowerDNS::ZonecryptokeyApi* | [**delete_cryptokey**](docs/ZonecryptokeyApi.md#delete_cryptokey) | **DELETE** /servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id} | This method deletes a key specified by cryptokey_id.
*PowerDNS::ZonecryptokeyApi* | [**get_cryptokey**](docs/ZonecryptokeyApi.md#get_cryptokey) | **GET** /servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id} | Returns all data about the CryptoKey, including the privatekey.
*PowerDNS::ZonecryptokeyApi* | [**list_cryptokeys**](docs/ZonecryptokeyApi.md#list_cryptokeys) | **GET** /servers/{server_id}/zones/{zone_id}/cryptokeys | Get all CryptoKeys for a zone, except the privatekey
*PowerDNS::ZonecryptokeyApi* | [**modify_cryptokey**](docs/ZonecryptokeyApi.md#modify_cryptokey) | **PUT** /servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id} | This method (de)activates a key from zone_name specified by cryptokey_id
*PowerDNS::ZonemetadataApi* | [**create_metadata**](docs/ZonemetadataApi.md#create_metadata) | **POST** /servers/{server_id}/zones/{zone_id}/metadata | Creates a set of metadata entries
*PowerDNS::ZonemetadataApi* | [**delete_metadata**](docs/ZonemetadataApi.md#delete_metadata) | **DELETE** /servers/{server_id}/zones/{zone_id}/metadata/{metadata_kind} | Delete all items of a single kind of domain metadata.
*PowerDNS::ZonemetadataApi* | [**get_metadata**](docs/ZonemetadataApi.md#get_metadata) | **GET** /servers/{server_id}/zones/{zone_id}/metadata/{metadata_kind} | Get the content of a single kind of domain metadata as a list of MetaData objects.
*PowerDNS::ZonemetadataApi* | [**list_metadata**](docs/ZonemetadataApi.md#list_metadata) | **GET** /servers/{server_id}/zones/{zone_id}/metadata | Get all the MetaData associated with the zone.
*PowerDNS::ZonemetadataApi* | [**modify_metadata**](docs/ZonemetadataApi.md#modify_metadata) | **PUT** /servers/{server_id}/zones/{zone_id}/metadata/{metadata_kind} | Modify the content of a single kind of domain metadata.
*PowerDNS::ZonesApi* | [**axfr_export_zone**](docs/ZonesApi.md#axfr_export_zone) | **GET** /servers/{server_id}/zones/{zone_id}/export | Returns the zone in AXFR format.
*PowerDNS::ZonesApi* | [**axfr_retrieve_zone**](docs/ZonesApi.md#axfr_retrieve_zone) | **PUT** /servers/{server_id}/zones/{zone_id}/axfr-retrieve | Send a DNS NOTIFY to all slaves.
*PowerDNS::ZonesApi* | [**check_zone**](docs/ZonesApi.md#check_zone) | **GET** /servers/{server_id}/zones/{zone_id}/check | Verify zone contents/configuration.
*PowerDNS::ZonesApi* | [**create_zone**](docs/ZonesApi.md#create_zone) | **POST** /servers/{server_id}/zones | Creates a new domain, returns the Zone on creation.
*PowerDNS::ZonesApi* | [**delete_zone**](docs/ZonesApi.md#delete_zone) | **DELETE** /servers/{server_id}/zones/{zone_id} | Deletes this zone, all attached metadata and rrsets.
*PowerDNS::ZonesApi* | [**list_zone**](docs/ZonesApi.md#list_zone) | **GET** /servers/{server_id}/zones/{zone_id} | zone managed by a server
*PowerDNS::ZonesApi* | [**list_zones**](docs/ZonesApi.md#list_zones) | **GET** /servers/{server_id}/zones | List all Zones in a server
*PowerDNS::ZonesApi* | [**notify_zone**](docs/ZonesApi.md#notify_zone) | **PUT** /servers/{server_id}/zones/{zone_id}/notify | Send a DNS NOTIFY to all slaves.
*PowerDNS::ZonesApi* | [**patch_zone**](docs/ZonesApi.md#patch_zone) | **PATCH** /servers/{server_id}/zones/{zone_id} | Creates/modifies/deletes RRsets present in the payload and their comments. Returns 204 No Content on success.
*PowerDNS::ZonesApi* | [**put_zone**](docs/ZonesApi.md#put_zone) | **PUT** /servers/{server_id}/zones/{zone_id} | Modifies basic zone data (metadata).
*PowerDNS::ZonesApi* | [**rectify_zone**](docs/ZonesApi.md#rectify_zone) | **PUT** /servers/{server_id}/zones/{zone_id}/rectify | Rectify the zone data.


## Documentation for Models

 - [PowerDNS::BaseStatisticItem](docs/BaseStatisticItem.md)
 - [PowerDNS::Comment](docs/Comment.md)
 - [PowerDNS::ConfigSetting](docs/ConfigSetting.md)
 - [PowerDNS::Cryptokey](docs/Cryptokey.md)
 - [PowerDNS::MapStatisticItemValue](docs/MapStatisticItemValue.md)
 - [PowerDNS::Metadata](docs/Metadata.md)
 - [PowerDNS::RRSet](docs/RRSet.md)
 - [PowerDNS::Record](docs/Record.md)
 - [PowerDNS::SearchResult](docs/SearchResult.md)
 - [PowerDNS::SearchResultComment](docs/SearchResultComment.md)
 - [PowerDNS::SearchResultRecord](docs/SearchResultRecord.md)
 - [PowerDNS::SearchResultZone](docs/SearchResultZone.md)
 - [PowerDNS::SearchResults](docs/SearchResults.md)
 - [PowerDNS::Server](docs/Server.md)
 - [PowerDNS::Servers](docs/Servers.md)
 - [PowerDNS::Zone](docs/Zone.md)
 - [PowerDNS::Zones](docs/Zones.md)
 - [PowerDNS::MapStatisticItem](docs/MapStatisticItem.md)
 - [PowerDNS::RingStatisticItem](docs/RingStatisticItem.md)
 - [PowerDNS::StatisticItem](docs/StatisticItem.md)


## Documentation for Authorization


### APIKeyHeader

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header
