# OpenapiClient::DestinationsApi

All URIs are relative to *https://api.themeparks.wiki/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_destinations**](DestinationsApi.md#get_destinations) | **GET** /destinations | Get a list of supported destinations available on the live API |


## get_destinations

> <DestinationsResponse> get_destinations

Get a list of supported destinations available on the live API

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DestinationsApi.new

begin
  # Get a list of supported destinations available on the live API
  result = api_instance.get_destinations
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DestinationsApi->get_destinations: #{e}"
end
```

#### Using the get_destinations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DestinationsResponse>, Integer, Hash)> get_destinations_with_http_info

```ruby
begin
  # Get a list of supported destinations available on the live API
  data, status_code, headers = api_instance.get_destinations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DestinationsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DestinationsApi->get_destinations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DestinationsResponse**](DestinationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

