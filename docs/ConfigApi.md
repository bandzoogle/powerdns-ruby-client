# PowerDNS::ConfigApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_config**](ConfigApi.md#get_config) | **GET** /servers/{server_id}/config | Returns all ConfigSettings for a single server
[**get_config_setting**](ConfigApi.md#get_config_setting) | **GET** /servers/{server_id}/config/{config_setting_name} | Returns a specific ConfigSetting for a single server


# **get_config**
> Array&lt;ConfigSetting&gt; get_config(server_id)

Returns all ConfigSettings for a single server

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 

### Return type

[**Array&lt;ConfigSetting&gt;**](ConfigSetting.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_config_setting**
> ConfigSetting get_config_setting(server_id, config_setting_name)

Returns a specific ConfigSetting for a single server

NOT IMPLEMENTED

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

api_instance = PowerDNS::ConfigApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

config_setting_name = "config_setting_name_example" # String | The name of the setting to retrieve


begin
  #Returns a specific ConfigSetting for a single server
  result = api_instance.get_config_setting(server_id, config_setting_name)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ConfigApi->get_config_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **config_setting_name** | **String**| The name of the setting to retrieve | 

### Return type

[**ConfigSetting**](ConfigSetting.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



