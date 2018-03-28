# PowerDNS::ZonesApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**axfr_export_zone**](ZonesApi.md#axfr_export_zone) | **GET** /servers/{server_id}/zones/{zone_id}/export | Returns the zone in AXFR format.
[**axfr_retrieve_zone**](ZonesApi.md#axfr_retrieve_zone) | **PUT** /servers/{server_id}/zones/{zone_id}/axfr-retrieve | Send a DNS NOTIFY to all slaves.
[**check_zone**](ZonesApi.md#check_zone) | **GET** /servers/{server_id}/zones/{zone_id}/check | Verify zone contents/configuration.
[**create_zone**](ZonesApi.md#create_zone) | **POST** /servers/{server_id}/zones | Creates a new domain, returns the Zone on creation.
[**delete_zone**](ZonesApi.md#delete_zone) | **DELETE** /servers/{server_id}/zones/{zone_id} | Deletes this zone, all attached metadata and rrsets.
[**list_zone**](ZonesApi.md#list_zone) | **GET** /servers/{server_id}/zones/{zone_id} | zone managed by a server
[**list_zones**](ZonesApi.md#list_zones) | **GET** /servers/{server_id}/zones | List all Zones in a server
[**notify_zone**](ZonesApi.md#notify_zone) | **PUT** /servers/{server_id}/zones/{zone_id}/notify | Send a DNS NOTIFY to all slaves.
[**patch_zone**](ZonesApi.md#patch_zone) | **PATCH** /servers/{server_id}/zones/{zone_id} | Creates/modifies/deletes RRsets present in the payload and their comments. Returns 204 No Content on success.
[**put_zone**](ZonesApi.md#put_zone) | **PUT** /servers/{server_id}/zones/{zone_id} | Modifies basic zone data (metadata).
[**rectify_zone**](ZonesApi.md#rectify_zone) | **PUT** /servers/{server_id}/zones/{zone_id}/rectify | Rectify the zone data.


# **axfr_export_zone**
> String axfr_export_zone(server_id, zone_id)

Returns the zone in AXFR format.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Returns the zone in AXFR format.
  result = api_instance.axfr_export_zone(server_id, zone_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->axfr_export_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

**String**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **axfr_retrieve_zone**
> axfr_retrieve_zone(server_id, zone_id)

Send a DNS NOTIFY to all slaves.

Fails when zone kind is not Master or Slave, or master and slave are disabled in the configuration. Only works for Slave if renotify is on. Clients MUST NOT send a body.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Send a DNS NOTIFY to all slaves.
  api_instance.axfr_retrieve_zone(server_id, zone_id)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->axfr_retrieve_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **check_zone**
> String check_zone(server_id, zone_id)

Verify zone contents/configuration.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Verify zone contents/configuration.
  result = api_instance.check_zone(server_id, zone_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->check_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

**String**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_zone**
> Zone create_zone(server_id, opts)

Creates a new domain, returns the Zone on creation.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

opts = { 
  rrsets: true # BOOLEAN | “true” (default) or “false”, whether to include the “rrsets” in the response Zone object.
}

begin
  #Creates a new domain, returns the Zone on creation.
  result = api_instance.create_zone(server_id, opts)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->create_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **rrsets** | **BOOLEAN**| “true” (default) or “false”, whether to include the “rrsets” in the response Zone object. | [optional] [default to true]

### Return type

[**Zone**](Zone.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_zone**
> delete_zone(server_id, zone_id)

Deletes this zone, all attached metadata and rrsets.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Deletes this zone, all attached metadata and rrsets.
  api_instance.delete_zone(server_id, zone_id)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->delete_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_zone**
> Zone list_zone(server_id, zone_id)

zone managed by a server

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #zone managed by a server
  result = api_instance.list_zone(server_id, zone_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->list_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

[**Zone**](Zone.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_zones**
> Array&lt;Zone&gt; list_zones(server_id)

List all Zones in a server

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve


begin
  #List all Zones in a server
  result = api_instance.list_zones(server_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->list_zones: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 

### Return type

[**Array&lt;Zone&gt;**](Zone.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **notify_zone**
> notify_zone(server_id, zone_id)

Send a DNS NOTIFY to all slaves.

Fails when zone kind is not Master or Slave, or master and slave are disabled in the configuration. Only works for Slave if renotify is on. Clients MUST NOT send a body.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Send a DNS NOTIFY to all slaves.
  api_instance.notify_zone(server_id, zone_id)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->notify_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **patch_zone**
> patch_zone(server_id, zone_id, zone_struct)

Creates/modifies/deletes RRsets present in the payload and their comments. Returns 204 No Content on success.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | 

zone_struct = PowerDNS::Zone.new # Zone | The zone struct to patch with


begin
  #Creates/modifies/deletes RRsets present in the payload and their comments. Returns 204 No Content on success.
  api_instance.patch_zone(server_id, zone_id, zone_struct)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->patch_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**|  | 
 **zone_struct** | [**Zone**](Zone.md)| The zone struct to patch with | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_zone**
> put_zone(server_id, zone_id, zone_struct)

Modifies basic zone data (metadata).

Allowed fields in client body: all except id, url and name. Returns 204 No Content on success.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | 

zone_struct = PowerDNS::Zone.new # Zone | The zone struct to patch with


begin
  #Modifies basic zone data (metadata).
  api_instance.put_zone(server_id, zone_id, zone_struct)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->put_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**|  | 
 **zone_struct** | [**Zone**](Zone.md)| The zone struct to patch with | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **rectify_zone**
> String rectify_zone(server_id, zone_id)

Rectify the zone data.

This does not take into account the API-RECTIFY metadata. Fails on slave zones and zones that do not have DNSSEC.

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

api_instance = PowerDNS::ZonesApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Rectify the zone data.
  result = api_instance.rectify_zone(server_id, zone_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonesApi->rectify_zone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

**String**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



