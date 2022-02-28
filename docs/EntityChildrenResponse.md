# OpenapiClient::EntityChildrenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **entity_type** | [**EntityType**](EntityType.md) |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **children** | [**Array&lt;EntityChild&gt;**](EntityChild.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EntityChildrenResponse.new(
  id: null,
  name: null,
  entity_type: null,
  timezone: null,
  children: null
)
```

