=begin
#PowerDNS Authoritative HTTP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.13

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'uri'

module PowerDNS
  class StatsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Query statistics.
    # Query PowerDNS internal statistics. Returns a list of BaseStatisticItem derived elements.
    # @param server_id The id of the server to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def get_stats(server_id, opts = {})
      data, _status_code, _headers = get_stats_with_http_info(server_id, opts)
      data
    end

    # Query statistics.
    # Query PowerDNS internal statistics. Returns a list of BaseStatisticItem derived elements.
    # @param server_id The id of the server to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Fixnum, Hash)>] Array<String> data, response status code and response headers
    def get_stats_with_http_info(server_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatsApi.get_stats ...'
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling StatsApi.get_stats"
      end
      # resource path
      local_var_path = '/servers/{server_id}/statistics'.sub('{' + 'server_id' + '}', server_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatsApi#get_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
