# PowerDNS::Cryptokey

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | set to \&quot;Cryptokey\&quot; | [optional] 
**id** | **String** | The internal identifier, read only | [optional] 
**keytype** | **String** |  | [optional] 
**active** | **BOOLEAN** | Whether or not the key is in active use | [optional] 
**dnskey** | **String** | The DNSKEY record for this key | [optional] 
**ds** | **Array&lt;String&gt;** | An array of DS records for this key | [optional] 
**privatekey** | **String** | The private key in ISC format | [optional] 
**algorithm** | **String** | The name of the algorithm of the key, should be a mnemonic | [optional] 
**bits** | **Integer** | The size of the key | [optional] 


