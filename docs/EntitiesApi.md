# OpenapiClient::EntitiesApi

All URIs are relative to *https://api.themeparks.wiki/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_entity**](EntitiesApi.md#get_entity) | **GET** /entity/{entityID} | Get entity document |
| [**get_entity_children**](EntitiesApi.md#get_entity_children) | **GET** /entity/{entityID}/children | Get all children for a given entity document |
| [**get_entity_live_data**](EntitiesApi.md#get_entity_live_data) | **GET** /entity/{entityID}/live | Get live data for this entity and any child entities |
| [**get_entity_schedule_upcoming**](EntitiesApi.md#get_entity_schedule_upcoming) | **GET** /entity/{entityID}/schedule | Get entity schedule |
| [**get_entity_schedule_year_month**](EntitiesApi.md#get_entity_schedule_year_month) | **GET** /entity/{entityID}/schedule/{year}/{month} | Get entity schedule for a specific month and year |


## get_entity

> <EntityData> get_entity(entity_id)

Get entity document

Get the full data document for a given entity. You can supply either a GUID or slug string.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EntitiesApi.new
entity_id = 'entity_id_example' # String | Entity ID (or slug) to fetch

begin
  # Get entity document
  result = api_instance.get_entity(entity_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity: #{e}"
end
```

#### Using the get_entity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntityData>, Integer, Hash)> get_entity_with_http_info(entity_id)

```ruby
begin
  # Get entity document
  data, status_code, headers = api_instance.get_entity_with_http_info(entity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntityData>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | Entity ID (or slug) to fetch |  |

### Return type

[**EntityData**](EntityData.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_children

> <EntityChildrenResponse> get_entity_children(entity_id)

Get all children for a given entity document

Fetch a list of all the children that belong to this entity. This is recursive, so a destination will return all parks and all rides within those parks.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EntitiesApi.new
entity_id = 'entity_id_example' # String | Entity ID (or slug) to fetch

begin
  # Get all children for a given entity document
  result = api_instance.get_entity_children(entity_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_children: #{e}"
end
```

#### Using the get_entity_children_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntityChildrenResponse>, Integer, Hash)> get_entity_children_with_http_info(entity_id)

```ruby
begin
  # Get all children for a given entity document
  data, status_code, headers = api_instance.get_entity_children_with_http_info(entity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntityChildrenResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_children_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | Entity ID (or slug) to fetch |  |

### Return type

[**EntityChildrenResponse**](EntityChildrenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_live_data

> <EntityLiveDataResponse> get_entity_live_data(entity_id)

Get live data for this entity and any child entities

Fetch this entity's live data (queue times, parade times, etc.) as well as all child entities. For a destination, this will include all parks within that destination.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EntitiesApi.new
entity_id = 'entity_id_example' # String | Entity ID (or slug) to fetch

begin
  # Get live data for this entity and any child entities
  result = api_instance.get_entity_live_data(entity_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_live_data: #{e}"
end
```

#### Using the get_entity_live_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntityLiveDataResponse>, Integer, Hash)> get_entity_live_data_with_http_info(entity_id)

```ruby
begin
  # Get live data for this entity and any child entities
  data, status_code, headers = api_instance.get_entity_live_data_with_http_info(entity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntityLiveDataResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_live_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | Entity ID (or slug) to fetch |  |

### Return type

[**EntityLiveDataResponse**](EntityLiveDataResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_schedule_upcoming

> <EntityScheduleResponse> get_entity_schedule_upcoming(entity_id)

Get entity schedule

Fetch this entity's schedule for the next 30 days

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EntitiesApi.new
entity_id = 'entity_id_example' # String | Entity ID (or slug) to fetch

begin
  # Get entity schedule
  result = api_instance.get_entity_schedule_upcoming(entity_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_schedule_upcoming: #{e}"
end
```

#### Using the get_entity_schedule_upcoming_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntityScheduleResponse>, Integer, Hash)> get_entity_schedule_upcoming_with_http_info(entity_id)

```ruby
begin
  # Get entity schedule
  data, status_code, headers = api_instance.get_entity_schedule_upcoming_with_http_info(entity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntityScheduleResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_schedule_upcoming_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | Entity ID (or slug) to fetch |  |

### Return type

[**EntityScheduleResponse**](EntityScheduleResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_schedule_year_month

> <EntityScheduleResponse> get_entity_schedule_year_month(entity_id, year, month)

Get entity schedule for a specific month and year

Fetch this entity's schedule for the supplied year and month

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EntitiesApi.new
entity_id = 'entity_id_example' # String | Entity ID (or slug) to fetch
year = 8.14 # Float | Schedule year to fetch
month = 8.14 # Float | Schedule month to fetch. Must be a two digit zero-padded month.

begin
  # Get entity schedule for a specific month and year
  result = api_instance.get_entity_schedule_year_month(entity_id, year, month)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_schedule_year_month: #{e}"
end
```

#### Using the get_entity_schedule_year_month_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntityScheduleResponse>, Integer, Hash)> get_entity_schedule_year_month_with_http_info(entity_id, year, month)

```ruby
begin
  # Get entity schedule for a specific month and year
  data, status_code, headers = api_instance.get_entity_schedule_year_month_with_http_info(entity_id, year, month)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntityScheduleResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EntitiesApi->get_entity_schedule_year_month_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | Entity ID (or slug) to fetch |  |
| **year** | **Float** | Schedule year to fetch |  |
| **month** | **Float** | Schedule month to fetch. Must be a two digit zero-padded month. |  |

### Return type

[**EntityScheduleResponse**](EntityScheduleResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

