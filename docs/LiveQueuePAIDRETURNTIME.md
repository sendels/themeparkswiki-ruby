# OpenapiClient::LiveQueuePAIDRETURNTIME

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**ReturnTimeState**](ReturnTimeState.md) |  | [optional] |
| **return_start** | **Time** |  | [optional] |
| **return_end** | **Time** |  | [optional] |
| **price** | [**PriceData**](PriceData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LiveQueuePAIDRETURNTIME.new(
  state: null,
  return_start: null,
  return_end: null,
  price: null
)
```

