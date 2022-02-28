# OpenapiClient::LiveQueueBOARDINGGROUP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allocation_status** | [**BoardingGroupState**](BoardingGroupState.md) |  | [optional] |
| **current_group_start** | **Time** |  | [optional] |
| **current_group_end** | **Time** |  | [optional] |
| **next_allocation_time** | **Time** |  | [optional] |
| **estimated_wait** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LiveQueueBOARDINGGROUP.new(
  allocation_status: null,
  current_group_start: null,
  current_group_end: null,
  next_allocation_time: null,
  estimated_wait: null
)
```

