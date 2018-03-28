# PowerDNS::Zone

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Opaque zone id (string), assigned by the server, should not be interpreted by the application. Guaranteed to be safe for embedding in URLs. | [optional] 
**name** | **String** | Name of the zone (e.g. “example.com.”) MUST have a trailing dot | [optional] 
**type** | **String** | Set to “Zone” | [optional] 
**url** | **String** | API endpoint for this zone | [optional] 
**kind** | **String** | Zone kind, one of “Native”, “Master”, “Slave” | [optional] 
**rrsets** | [**Array&lt;RRSet&gt;**](RRSet.md) | RRSets in this zone | [optional] 
**serial** | **Integer** | The SOA serial number | [optional] 
**notified_serial** | **Integer** | The SOA serial notifications have been sent out for | [optional] 
**masters** | **Array&lt;String&gt;** |  List of IP addresses configured as a master for this zone (“Slave” type zones only) | [optional] 
**dnssec** | **BOOLEAN** | Whether or not this zone is DNSSEC signed (inferred from presigned being true XOR presence of at least one cryptokey with active being true) | [optional] 
**nsec3param** | **String** | The NSEC3PARAM record | [optional] 
**nsec3narrow** | **BOOLEAN** | Whether or not the zone uses NSEC3 narrow | [optional] 
**presigned** | **BOOLEAN** | Whether or not the zone is pre-signed | [optional] 
**soa_edit** | **String** | The SOA-EDIT metadata item | [optional] 
**soa_edit_api** | **String** | The SOA-EDIT-API metadata item | [optional] 
**api_rectify** | **BOOLEAN** |  Whether or not the zone will be rectified on data changes via the API | [optional] 
**zone** | **String** | MAY contain a BIND-style zone file when creating a zone | [optional] 
**account** | **String** | MAY be set. Its value is defined by local policy | [optional] 
**nameservers** | **Array&lt;String&gt;** | MAY be sent in client bodies during creation, and MUST NOT be sent by the server. Simple list of strings of nameserver names, including the trailing dot. Not required for slave zones. | [optional] 


