=begin
#Theme Parks Wiki V1 API

#api.themeparks.wiki

The version of the OpenAPI document: 1.0.0-alpha

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class EntitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get entity document
    # Get the full data document for a given entity. You can supply either a GUID or slug string.
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [EntityData]
    def get_entity(entity_id, opts = {})
      data, _status_code, _headers = get_entity_with_http_info(entity_id, opts)
      data
    end

    # Get entity document
    # Get the full data document for a given entity. You can supply either a GUID or slug string.
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntityData, Integer, Hash)>] EntityData data, response status code and response headers
    def get_entity_with_http_info(entity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitiesApi.get_entity ...'
      end
      # verify the required parameter 'entity_id' is set
      if @api_client.config.client_side_validation && entity_id.nil?
        fail ArgumentError, "Missing the required parameter 'entity_id' when calling EntitiesApi.get_entity"
      end
      # resource path
      local_var_path = '/entity/{entityID}'.sub('{' + 'entityID' + '}', CGI.escape(entity_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EntityData'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"EntitiesApi.get_entity",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitiesApi#get_entity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all children for a given entity document
    # Fetch a list of all the children that belong to this entity. This is recursive, so a destination will return all parks and all rides within those parks.
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [EntityChildrenResponse]
    def get_entity_children(entity_id, opts = {})
      data, _status_code, _headers = get_entity_children_with_http_info(entity_id, opts)
      data
    end

    # Get all children for a given entity document
    # Fetch a list of all the children that belong to this entity. This is recursive, so a destination will return all parks and all rides within those parks.
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntityChildrenResponse, Integer, Hash)>] EntityChildrenResponse data, response status code and response headers
    def get_entity_children_with_http_info(entity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitiesApi.get_entity_children ...'
      end
      # verify the required parameter 'entity_id' is set
      if @api_client.config.client_side_validation && entity_id.nil?
        fail ArgumentError, "Missing the required parameter 'entity_id' when calling EntitiesApi.get_entity_children"
      end
      # resource path
      local_var_path = '/entity/{entityID}/children'.sub('{' + 'entityID' + '}', CGI.escape(entity_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EntityChildrenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"EntitiesApi.get_entity_children",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitiesApi#get_entity_children\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get live data for this entity and any child entities
    # Fetch this entity's live data (queue times, parade times, etc.) as well as all child entities. For a destination, this will include all parks within that destination.
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [EntityLiveDataResponse]
    def get_entity_live_data(entity_id, opts = {})
      data, _status_code, _headers = get_entity_live_data_with_http_info(entity_id, opts)
      data
    end

    # Get live data for this entity and any child entities
    # Fetch this entity&#39;s live data (queue times, parade times, etc.) as well as all child entities. For a destination, this will include all parks within that destination.
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntityLiveDataResponse, Integer, Hash)>] EntityLiveDataResponse data, response status code and response headers
    def get_entity_live_data_with_http_info(entity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitiesApi.get_entity_live_data ...'
      end
      # verify the required parameter 'entity_id' is set
      if @api_client.config.client_side_validation && entity_id.nil?
        fail ArgumentError, "Missing the required parameter 'entity_id' when calling EntitiesApi.get_entity_live_data"
      end
      # resource path
      local_var_path = '/entity/{entityID}/live'.sub('{' + 'entityID' + '}', CGI.escape(entity_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EntityLiveDataResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"EntitiesApi.get_entity_live_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitiesApi#get_entity_live_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get entity schedule
    # Fetch this entity's schedule for the next 30 days
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [EntityScheduleResponse]
    def get_entity_schedule_upcoming(entity_id, opts = {})
      data, _status_code, _headers = get_entity_schedule_upcoming_with_http_info(entity_id, opts)
      data
    end

    # Get entity schedule
    # Fetch this entity&#39;s schedule for the next 30 days
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntityScheduleResponse, Integer, Hash)>] EntityScheduleResponse data, response status code and response headers
    def get_entity_schedule_upcoming_with_http_info(entity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitiesApi.get_entity_schedule_upcoming ...'
      end
      # verify the required parameter 'entity_id' is set
      if @api_client.config.client_side_validation && entity_id.nil?
        fail ArgumentError, "Missing the required parameter 'entity_id' when calling EntitiesApi.get_entity_schedule_upcoming"
      end
      # resource path
      local_var_path = '/entity/{entityID}/schedule'.sub('{' + 'entityID' + '}', CGI.escape(entity_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EntityScheduleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"EntitiesApi.get_entity_schedule_upcoming",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitiesApi#get_entity_schedule_upcoming\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get entity schedule for a specific month and year
    # Fetch this entity's schedule for the supplied year and month
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param year [Float] Schedule year to fetch
    # @param month [Float] Schedule month to fetch. Must be a two digit zero-padded month.
    # @param [Hash] opts the optional parameters
    # @return [EntityScheduleResponse]
    def get_entity_schedule_year_month(entity_id, year, month, opts = {})
      data, _status_code, _headers = get_entity_schedule_year_month_with_http_info(entity_id, year, month, opts)
      data
    end

    # Get entity schedule for a specific month and year
    # Fetch this entity&#39;s schedule for the supplied year and month
    # @param entity_id [String] Entity ID (or slug) to fetch
    # @param year [Float] Schedule year to fetch
    # @param month [Float] Schedule month to fetch. Must be a two digit zero-padded month.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EntityScheduleResponse, Integer, Hash)>] EntityScheduleResponse data, response status code and response headers
    def get_entity_schedule_year_month_with_http_info(entity_id, year, month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EntitiesApi.get_entity_schedule_year_month ...'
      end
      # verify the required parameter 'entity_id' is set
      if @api_client.config.client_side_validation && entity_id.nil?
        fail ArgumentError, "Missing the required parameter 'entity_id' when calling EntitiesApi.get_entity_schedule_year_month"
      end
      # verify the required parameter 'year' is set
      if @api_client.config.client_side_validation && year.nil?
        fail ArgumentError, "Missing the required parameter 'year' when calling EntitiesApi.get_entity_schedule_year_month"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling EntitiesApi.get_entity_schedule_year_month"
      end
      # resource path
      local_var_path = '/entity/{entityID}/schedule/{year}/{month}'.sub('{' + 'entityID' + '}', CGI.escape(entity_id.to_s)).sub('{' + 'year' + '}', CGI.escape(year.to_s)).sub('{' + 'month' + '}', CGI.escape(month.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EntityScheduleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"EntitiesApi.get_entity_schedule_year_month",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EntitiesApi#get_entity_schedule_year_month\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
