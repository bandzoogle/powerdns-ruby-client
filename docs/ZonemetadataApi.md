# PowerDNS::ZonemetadataApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_metadata**](ZonemetadataApi.md#create_metadata) | **POST** /servers/{server_id}/zones/{zone_id}/metadata | Creates a set of metadata entries
[**delete_metadata**](ZonemetadataApi.md#delete_metadata) | **DELETE** /servers/{server_id}/zones/{zone_id}/metadata/{metadata_kind} | Delete all items of a single kind of domain metadata.
[**get_metadata**](ZonemetadataApi.md#get_metadata) | **GET** /servers/{server_id}/zones/{zone_id}/metadata/{metadata_kind} | Get the content of a single kind of domain metadata as a list of MetaData objects.
[**list_metadata**](ZonemetadataApi.md#list_metadata) | **GET** /servers/{server_id}/zones/{zone_id}/metadata | Get all the MetaData associated with the zone.
[**modify_metadata**](ZonemetadataApi.md#modify_metadata) | **PUT** /servers/{server_id}/zones/{zone_id}/metadata/{metadata_kind} | Modify the content of a single kind of domain metadata.


# **create_metadata**
> create_metadata(server_id, zone_id, metadata)

Creates a set of metadata entries

Creates a set of metadata entries of given kind for the zone. Existing metadata entries for the zone with the same kind are not overwritten.

### Example
```ruby
# load the gem
require 'powerdns'
# setup authorization
PowerDNS.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = PowerDNS::ZonemetadataApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | 

metadata = [PowerDNS::Metadata.new] # Array<Metadata> | List of metadata to add/create


begin
  #Creates a set of metadata entries
  api_instance.create_metadata(server_id, zone_id, metadata)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonemetadataApi->create_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**|  | 
 **metadata** | [**Array&lt;Metadata&gt;**](Metadata.md)| List of metadata to add/create | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_metadata**
> delete_metadata(server_id, zone_id, metadata_kind)

Delete all items of a single kind of domain metadata.

### Example
```ruby
# load the gem
require 'powerdns'
# setup authorization
PowerDNS.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = PowerDNS::ZonemetadataApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve

metadata_kind = "metadata_kind_example" # String | ???


begin
  #Delete all items of a single kind of domain metadata.
  api_instance.delete_metadata(server_id, zone_id, metadata_kind)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonemetadataApi->delete_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 
 **metadata_kind** | **String**| ??? | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_metadata**
> Metadata get_metadata(server_id, zone_id, metadata_kind)

Get the content of a single kind of domain metadata as a list of MetaData objects.

### Example
```ruby
# load the gem
require 'powerdns'
# setup authorization
PowerDNS.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = PowerDNS::ZonemetadataApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve

metadata_kind = "metadata_kind_example" # String | ???


begin
  #Get the content of a single kind of domain metadata as a list of MetaData objects.
  result = api_instance.get_metadata(server_id, zone_id, metadata_kind)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonemetadataApi->get_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 
 **metadata_kind** | **String**| ??? | 

### Return type

[**Metadata**](Metadata.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_metadata**
> Array&lt;Metadata&gt; list_metadata(server_id, zone_id)

Get all the MetaData associated with the zone.

### Example
```ruby
# load the gem
require 'powerdns'
# setup authorization
PowerDNS.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = PowerDNS::ZonemetadataApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Get all the MetaData associated with the zone.
  result = api_instance.list_metadata(server_id, zone_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonemetadataApi->list_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

[**Array&lt;Metadata&gt;**](Metadata.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_metadata**
> modify_metadata(server_id, zone_id, metadata_kind, metadata)

Modify the content of a single kind of domain metadata.

### Example
```ruby
# load the gem
require 'powerdns'
# setup authorization
PowerDNS.configure do |config|
  # Configure API key authorization: APIKeyHeader
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = PowerDNS::ZonemetadataApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | 

metadata_kind = "metadata_kind_example" # String | The kind of metadata

metadata = PowerDNS::Metadata.new # Metadata | metadata to add/create


begin
  #Modify the content of a single kind of domain metadata.
  api_instance.modify_metadata(server_id, zone_id, metadata_kind, metadata)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonemetadataApi->modify_metadata: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**|  | 
 **metadata_kind** | **String**| The kind of metadata | 
 **metadata** | [**Metadata**](Metadata.md)| metadata to add/create | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



