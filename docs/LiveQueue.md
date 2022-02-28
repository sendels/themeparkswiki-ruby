# OpenapiClient::LiveQueue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **standby** | [**LiveQueueSTANDBY**](LiveQueueSTANDBY.md) |  | [optional] |
| **single_rider** | [**LiveQueueSTANDBY**](LiveQueueSTANDBY.md) |  | [optional] |
| **return_time** | [**LiveQueueRETURNTIME**](LiveQueueRETURNTIME.md) |  | [optional] |
| **paid_return_time** | [**LiveQueuePAIDRETURNTIME**](LiveQueuePAIDRETURNTIME.md) |  | [optional] |
| **boarding_group** | [**LiveQueueBOARDINGGROUP**](LiveQueueBOARDINGGROUP.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LiveQueue.new(
  standby: null,
  single_rider: null,
  return_time: null,
  paid_return_time: null,
  boarding_group: null
)
```

