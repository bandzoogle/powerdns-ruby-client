# PowerDNS::StatsApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_stats**](StatsApi.md#get_stats) | **GET** /servers/{server_id}/statistics | Query statistics.


# **get_stats**
> Array&lt;String&gt; get_stats(server_id)

Query statistics.

Query PowerDNS internal statistics. Returns a list of BaseStatisticItem derived elements.

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

api_instance = PowerDNS::StatsApi.new

server_id = "server_id_example" # String | The id of the server to retrieve


begin
  #Query statistics.
  result = api_instance.get_stats(server_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling StatsApi->get_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 

### Return type

**Array&lt;String&gt;**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



