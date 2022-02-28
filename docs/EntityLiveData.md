# OpenapiClient::EntityLiveData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **entity_type** | [**EntityType**](EntityType.md) |  |  |
| **status** | [**LiveStatusType**](LiveStatusType.md) |  | [optional] |
| **last_updated** | **Time** |  |  |
| **queue** | [**LiveQueue**](LiveQueue.md) |  | [optional] |
| **showtimes** | [**Array&lt;LiveShowTime&gt;**](LiveShowTime.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EntityLiveData.new(
  id: null,
  name: null,
  entity_type: null,
  status: null,
  last_updated: null,
  queue: null,
  showtimes: null
)
```

