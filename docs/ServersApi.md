# PowerDNS::ServersApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_server**](ServersApi.md#list_server) | **GET** /servers/{server_id} | List a server
[**list_servers**](ServersApi.md#list_servers) | **GET** /servers | List all servers


# **list_server**
> Server list_server(server_id)

List a server

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

api_instance = PowerDNS::ServersApi.new

server_id = "server_id_example" # String | The id of the server to retrieve


begin
  #List a server
  result = api_instance.list_server(server_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ServersApi->list_server: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 

### Return type

[**Server**](Server.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_servers**
> Array&lt;Server&gt; list_servers

List all servers

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

api_instance = PowerDNS::ServersApi.new

begin
  #List all servers
  result = api_instance.list_servers
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ServersApi->list_servers: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Server&gt;**](Server.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



