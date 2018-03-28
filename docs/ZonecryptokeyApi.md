# PowerDNS::ZonecryptokeyApi

All URIs are relative to *http://localhost:8081/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cryptokey**](ZonecryptokeyApi.md#create_cryptokey) | **POST** /servers/{server_id}/zones/{zone_id}/cryptokeys | Creates a Cryptokey
[**delete_cryptokey**](ZonecryptokeyApi.md#delete_cryptokey) | **DELETE** /servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id} | This method deletes a key specified by cryptokey_id.
[**get_cryptokey**](ZonecryptokeyApi.md#get_cryptokey) | **GET** /servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id} | Returns all data about the CryptoKey, including the privatekey.
[**list_cryptokeys**](ZonecryptokeyApi.md#list_cryptokeys) | **GET** /servers/{server_id}/zones/{zone_id}/cryptokeys | Get all CryptoKeys for a zone, except the privatekey
[**modify_cryptokey**](ZonecryptokeyApi.md#modify_cryptokey) | **PUT** /servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id} | This method (de)activates a key from zone_name specified by cryptokey_id


# **create_cryptokey**
> Cryptokey create_cryptokey(server_id, zone_id, cryptokey)

Creates a Cryptokey

This method adds a new key to a zone. The key can either be generated or imported by supplying the content parameter. if content, bits and algo are null, a key will be generated based on the default-ksk-algorithm and default-ksk-size settings for a KSK and the default-zsk-algorithm and default-zsk-size options for a ZSK.

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

api_instance = PowerDNS::ZonecryptokeyApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | 

cryptokey = PowerDNS::Cryptokey.new # Cryptokey | Add a Cryptokey


begin
  #Creates a Cryptokey
  result = api_instance.create_cryptokey(server_id, zone_id, cryptokey)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonecryptokeyApi->create_cryptokey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**|  | 
 **cryptokey** | [**Cryptokey**](Cryptokey.md)| Add a Cryptokey | 

### Return type

[**Cryptokey**](Cryptokey.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_cryptokey**
> delete_cryptokey(server_id, zone_id, cryptokey_id)

This method deletes a key specified by cryptokey_id.

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

api_instance = PowerDNS::ZonecryptokeyApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve

cryptokey_id = "cryptokey_id_example" # String | The id value of the Cryptokey


begin
  #This method deletes a key specified by cryptokey_id.
  api_instance.delete_cryptokey(server_id, zone_id, cryptokey_id)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonecryptokeyApi->delete_cryptokey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 
 **cryptokey_id** | **String**| The id value of the Cryptokey | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cryptokey**
> Cryptokey get_cryptokey(server_id, zone_id, cryptokey_id)

Returns all data about the CryptoKey, including the privatekey.

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

api_instance = PowerDNS::ZonecryptokeyApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve

cryptokey_id = "cryptokey_id_example" # String | The id value of the CryptoKey


begin
  #Returns all data about the CryptoKey, including the privatekey.
  result = api_instance.get_cryptokey(server_id, zone_id, cryptokey_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonecryptokeyApi->get_cryptokey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 
 **cryptokey_id** | **String**| The id value of the CryptoKey | 

### Return type

[**Cryptokey**](Cryptokey.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_cryptokeys**
> Array&lt;Cryptokey&gt; list_cryptokeys(server_id, zone_id)

Get all CryptoKeys for a zone, except the privatekey

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

api_instance = PowerDNS::ZonecryptokeyApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | The id of the zone to retrieve


begin
  #Get all CryptoKeys for a zone, except the privatekey
  result = api_instance.list_cryptokeys(server_id, zone_id)
  p result
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonecryptokeyApi->list_cryptokeys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**| The id of the zone to retrieve | 

### Return type

[**Array&lt;Cryptokey&gt;**](Cryptokey.md)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_cryptokey**
> modify_cryptokey(server_id, zone_id, cryptokey_id, cryptokey)

This method (de)activates a key from zone_name specified by cryptokey_id

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

api_instance = PowerDNS::ZonecryptokeyApi.new

server_id = "server_id_example" # String | The id of the server to retrieve

zone_id = "zone_id_example" # String | 

cryptokey_id = "cryptokey_id_example" # String | Cryptokey to manipulate

cryptokey = PowerDNS::Cryptokey.new # Cryptokey | the Cryptokey


begin
  #This method (de)activates a key from zone_name specified by cryptokey_id
  api_instance.modify_cryptokey(server_id, zone_id, cryptokey_id, cryptokey)
rescue PowerDNS::ApiError => e
  puts "Exception when calling ZonecryptokeyApi->modify_cryptokey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_id** | **String**| The id of the server to retrieve | 
 **zone_id** | **String**|  | 
 **cryptokey_id** | **String**| Cryptokey to manipulate | 
 **cryptokey** | [**Cryptokey**](Cryptokey.md)| the Cryptokey | 

### Return type

nil (empty response body)

### Authorization

[APIKeyHeader](../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



