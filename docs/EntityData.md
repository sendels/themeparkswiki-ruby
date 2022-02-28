# OpenapiClient::EntityData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **entity_type** | [**EntityType**](EntityType.md) |  |  |
| **parent_id** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **timezone** | **String** |  |  |
| **location** | [**EntityDataLocation**](EntityDataLocation.md) |  | [optional] |
| **tags** | [**Array&lt;TagData&gt;**](TagData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EntityData.new(
  id: null,
  name: null,
  entity_type: null,
  parent_id: null,
  destination_id: null,
  timezone: null,
  location: null,
  tags: null
)
```

