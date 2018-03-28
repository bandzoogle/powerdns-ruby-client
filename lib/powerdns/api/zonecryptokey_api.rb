=begin
#PowerDNS Authoritative HTTP API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 0.0.13

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module PowerDNS
  class ZonecryptokeyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a Cryptokey
    # This method adds a new key to a zone. The key can either be generated or imported by supplying the content parameter. if content, bits and algo are null, a key will be generated based on the default-ksk-algorithm and default-ksk-size settings for a KSK and the default-zsk-algorithm and default-zsk-size options for a ZSK.
    # @param server_id The id of the server to retrieve
    # @param zone_id 
    # @param cryptokey Add a Cryptokey
    # @param [Hash] opts the optional parameters
    # @return [Cryptokey]
    def create_cryptokey(server_id, zone_id, cryptokey, opts = {})
      data, _status_code, _headers = create_cryptokey_with_http_info(server_id, zone_id, cryptokey, opts)
      return data
    end

    # Creates a Cryptokey
    # This method adds a new key to a zone. The key can either be generated or imported by supplying the content parameter. if content, bits and algo are null, a key will be generated based on the default-ksk-algorithm and default-ksk-size settings for a KSK and the default-zsk-algorithm and default-zsk-size options for a ZSK.
    # @param server_id The id of the server to retrieve
    # @param zone_id 
    # @param cryptokey Add a Cryptokey
    # @param [Hash] opts the optional parameters
    # @return [Array<(Cryptokey, Fixnum, Hash)>] Cryptokey data, response status code and response headers
    def create_cryptokey_with_http_info(server_id, zone_id, cryptokey, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ZonecryptokeyApi.create_cryptokey ..."
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ZonecryptokeyApi.create_cryptokey"
      end
      # verify the required parameter 'zone_id' is set
      if @api_client.config.client_side_validation && zone_id.nil?
        fail ArgumentError, "Missing the required parameter 'zone_id' when calling ZonecryptokeyApi.create_cryptokey"
      end
      # verify the required parameter 'cryptokey' is set
      if @api_client.config.client_side_validation && cryptokey.nil?
        fail ArgumentError, "Missing the required parameter 'cryptokey' when calling ZonecryptokeyApi.create_cryptokey"
      end
      # resource path
      local_var_path = "/servers/{server_id}/zones/{zone_id}/cryptokeys".sub('{' + 'server_id' + '}', server_id.to_s).sub('{' + 'zone_id' + '}', zone_id.to_s)

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
      post_body = @api_client.object_to_http_body(cryptokey)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Cryptokey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZonecryptokeyApi#create_cryptokey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This method deletes a key specified by cryptokey_id.
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id The id of the zone to retrieve
    # @param cryptokey_id The id value of the Cryptokey
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cryptokey(server_id, zone_id, cryptokey_id, opts = {})
      delete_cryptokey_with_http_info(server_id, zone_id, cryptokey_id, opts)
      return nil
    end

    # This method deletes a key specified by cryptokey_id.
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id The id of the zone to retrieve
    # @param cryptokey_id The id value of the Cryptokey
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_cryptokey_with_http_info(server_id, zone_id, cryptokey_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ZonecryptokeyApi.delete_cryptokey ..."
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ZonecryptokeyApi.delete_cryptokey"
      end
      # verify the required parameter 'zone_id' is set
      if @api_client.config.client_side_validation && zone_id.nil?
        fail ArgumentError, "Missing the required parameter 'zone_id' when calling ZonecryptokeyApi.delete_cryptokey"
      end
      # verify the required parameter 'cryptokey_id' is set
      if @api_client.config.client_side_validation && cryptokey_id.nil?
        fail ArgumentError, "Missing the required parameter 'cryptokey_id' when calling ZonecryptokeyApi.delete_cryptokey"
      end
      # resource path
      local_var_path = "/servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id}".sub('{' + 'server_id' + '}', server_id.to_s).sub('{' + 'zone_id' + '}', zone_id.to_s).sub('{' + 'cryptokey_id' + '}', cryptokey_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZonecryptokeyApi#delete_cryptokey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns all data about the CryptoKey, including the privatekey.
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id The id of the zone to retrieve
    # @param cryptokey_id The id value of the CryptoKey
    # @param [Hash] opts the optional parameters
    # @return [Cryptokey]
    def get_cryptokey(server_id, zone_id, cryptokey_id, opts = {})
      data, _status_code, _headers = get_cryptokey_with_http_info(server_id, zone_id, cryptokey_id, opts)
      return data
    end

    # Returns all data about the CryptoKey, including the privatekey.
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id The id of the zone to retrieve
    # @param cryptokey_id The id value of the CryptoKey
    # @param [Hash] opts the optional parameters
    # @return [Array<(Cryptokey, Fixnum, Hash)>] Cryptokey data, response status code and response headers
    def get_cryptokey_with_http_info(server_id, zone_id, cryptokey_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ZonecryptokeyApi.get_cryptokey ..."
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ZonecryptokeyApi.get_cryptokey"
      end
      # verify the required parameter 'zone_id' is set
      if @api_client.config.client_side_validation && zone_id.nil?
        fail ArgumentError, "Missing the required parameter 'zone_id' when calling ZonecryptokeyApi.get_cryptokey"
      end
      # verify the required parameter 'cryptokey_id' is set
      if @api_client.config.client_side_validation && cryptokey_id.nil?
        fail ArgumentError, "Missing the required parameter 'cryptokey_id' when calling ZonecryptokeyApi.get_cryptokey"
      end
      # resource path
      local_var_path = "/servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id}".sub('{' + 'server_id' + '}', server_id.to_s).sub('{' + 'zone_id' + '}', zone_id.to_s).sub('{' + 'cryptokey_id' + '}', cryptokey_id.to_s)

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
        :return_type => 'Cryptokey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZonecryptokeyApi#get_cryptokey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all CryptoKeys for a zone, except the privatekey
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id The id of the zone to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<Cryptokey>]
    def list_cryptokeys(server_id, zone_id, opts = {})
      data, _status_code, _headers = list_cryptokeys_with_http_info(server_id, zone_id, opts)
      return data
    end

    # Get all CryptoKeys for a zone, except the privatekey
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id The id of the zone to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Cryptokey>, Fixnum, Hash)>] Array<Cryptokey> data, response status code and response headers
    def list_cryptokeys_with_http_info(server_id, zone_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ZonecryptokeyApi.list_cryptokeys ..."
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ZonecryptokeyApi.list_cryptokeys"
      end
      # verify the required parameter 'zone_id' is set
      if @api_client.config.client_side_validation && zone_id.nil?
        fail ArgumentError, "Missing the required parameter 'zone_id' when calling ZonecryptokeyApi.list_cryptokeys"
      end
      # resource path
      local_var_path = "/servers/{server_id}/zones/{zone_id}/cryptokeys".sub('{' + 'server_id' + '}', server_id.to_s).sub('{' + 'zone_id' + '}', zone_id.to_s)

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
        :return_type => 'Array<Cryptokey>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZonecryptokeyApi#list_cryptokeys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # This method (de)activates a key from zone_name specified by cryptokey_id
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id 
    # @param cryptokey_id Cryptokey to manipulate
    # @param cryptokey the Cryptokey
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def modify_cryptokey(server_id, zone_id, cryptokey_id, cryptokey, opts = {})
      modify_cryptokey_with_http_info(server_id, zone_id, cryptokey_id, cryptokey, opts)
      return nil
    end

    # This method (de)activates a key from zone_name specified by cryptokey_id
    # 
    # @param server_id The id of the server to retrieve
    # @param zone_id 
    # @param cryptokey_id Cryptokey to manipulate
    # @param cryptokey the Cryptokey
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def modify_cryptokey_with_http_info(server_id, zone_id, cryptokey_id, cryptokey, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ZonecryptokeyApi.modify_cryptokey ..."
      end
      # verify the required parameter 'server_id' is set
      if @api_client.config.client_side_validation && server_id.nil?
        fail ArgumentError, "Missing the required parameter 'server_id' when calling ZonecryptokeyApi.modify_cryptokey"
      end
      # verify the required parameter 'zone_id' is set
      if @api_client.config.client_side_validation && zone_id.nil?
        fail ArgumentError, "Missing the required parameter 'zone_id' when calling ZonecryptokeyApi.modify_cryptokey"
      end
      # verify the required parameter 'cryptokey_id' is set
      if @api_client.config.client_side_validation && cryptokey_id.nil?
        fail ArgumentError, "Missing the required parameter 'cryptokey_id' when calling ZonecryptokeyApi.modify_cryptokey"
      end
      # verify the required parameter 'cryptokey' is set
      if @api_client.config.client_side_validation && cryptokey.nil?
        fail ArgumentError, "Missing the required parameter 'cryptokey' when calling ZonecryptokeyApi.modify_cryptokey"
      end
      # resource path
      local_var_path = "/servers/{server_id}/zones/{zone_id}/cryptokeys/{cryptokey_id}".sub('{' + 'server_id' + '}', server_id.to_s).sub('{' + 'zone_id' + '}', zone_id.to_s).sub('{' + 'cryptokey_id' + '}', cryptokey_id.to_s)

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
      post_body = @api_client.object_to_http_body(cryptokey)
      auth_names = ['APIKeyHeader']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ZonecryptokeyApi#modify_cryptokey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end