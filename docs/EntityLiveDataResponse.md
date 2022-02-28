# OpenapiClient::EntityLiveDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **entity_type** | [**EntityType**](EntityType.md) |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **live_data** | [**Array&lt;EntityLiveData&gt;**](EntityLiveData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EntityLiveDataResponse.new(
  id: null,
  name: null,
  entity_type: null,
  timezone: null,
  live_data: null
)
```

