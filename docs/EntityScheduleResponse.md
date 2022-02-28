# OpenapiClient::EntityScheduleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **entity_type** | [**EntityType**](EntityType.md) |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **schedule** | [**Array&lt;ScheduleEntry&gt;**](ScheduleEntry.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EntityScheduleResponse.new(
  id: null,
  name: null,
  entity_type: null,
  timezone: null,
  schedule: null
)
```

