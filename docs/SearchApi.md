# PowerDNS::SearchApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_data**](SearchApi.md#search_data) | **GET** /servers/{server_id}/search-data | Search the data inside PowerDNS
[**search_log**](SearchApi.md#search_log) | **GET** /servers/{server_id}/search-log | Query the log, filtered by search_term.


# **search_data**
> SearchResults search_data(server_id, q, max)

Search the data inside PowerDNS

Search the data inside PowerDNS for search_term and return at most max_results. This includes zones, records and comments. The * character can be used in search_term as a wildcard character and the ? character can be used as a wildcard for a single character.

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

api_instance = PowerDNS::SearchApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

q = "q_example" # String | The string to search for

max = 56 # Integer | Maximum number of entries to return


begin
  #Search the data inside PowerDNS
  result = api_instance.search_data(server_id, q, max)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling SearchApi->search_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **q** | **String**| The string to search for | 
 **max** | **Integer**| Maximum number of entries to return | 

### Return type

[**SearchResults**](SearchResults.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **search_log**
> Array&lt;String&gt; search_log(server_id, q)

Query the log, filtered by search_term.

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

api_instance = PowerDNS::SearchApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

q = "q_example" # String | The string to search for


begin
  #Query the log, filtered by search_term.
  result = api_instance.search_log(server_id, q)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling SearchApi->search_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **q** | **String**| The string to search for | 

### Return type

**Array&lt;String&gt;**

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



