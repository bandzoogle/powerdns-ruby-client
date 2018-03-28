# PowerDNS::Record

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **String** | The content of this record | 
**disabled** | **BOOLEAN** | Whether or not this record is disabled | 
**set_ptr** | **BOOLEAN** | If set to true, the server will find the matching reverse zone and create a PTR there. Existing PTR records are replaced. If no matching reverse Zone, an error is thrown. Only valid in client bodies, only valid for A and AAAA types. Not returned by the server. | [optional] 


