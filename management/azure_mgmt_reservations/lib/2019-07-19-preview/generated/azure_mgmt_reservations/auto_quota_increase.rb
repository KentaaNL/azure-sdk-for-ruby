# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  #
  # Microsoft Azure Quota Resource Provider.
  #
  class AutoQuotaIncrease
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AutoQuotaIncrease class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ReservationsManagementClient] reference to the ReservationsManagementClient
    attr_reader :client

    #
    # Gets the Auto Quota Increase enrollment details for the specified
    # subscription.
    #
    # @param subscription_id [String] Azure subscription id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AutoQuotaIncreaseDetail] operation results.
    #
    def get_properties(subscription_id, custom_headers:nil)
      response = get_properties_async(subscription_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the Auto Quota Increase enrollment details for the specified
    # subscription.
    #
    # @param subscription_id [String] Azure subscription id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_properties_with_http_info(subscription_id, custom_headers:nil)
      get_properties_async(subscription_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the Auto Quota Increase enrollment details for the specified
    # subscription.
    #
    # @param subscription_id [String] Azure subscription id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_properties_async(subscription_id, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Capacity/autoQuotaIncrease'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AutoQuotaIncreaseDetail.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Sets the Auto Quota Increase enrollment properties for the specified
    # subscription.
    #
    # @param subscription_id [String] Azure subscription id.
    # @param auto_quota_increase_request [AutoQuotaIncreaseDetail] Auto Quota
    # increase request payload.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AutoQuotaIncreaseDetail] operation results.
    #
    def create(subscription_id, auto_quota_increase_request, custom_headers:nil)
      response = create_async(subscription_id, auto_quota_increase_request, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Sets the Auto Quota Increase enrollment properties for the specified
    # subscription.
    #
    # @param subscription_id [String] Azure subscription id.
    # @param auto_quota_increase_request [AutoQuotaIncreaseDetail] Auto Quota
    # increase request payload.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(subscription_id, auto_quota_increase_request, custom_headers:nil)
      create_async(subscription_id, auto_quota_increase_request, custom_headers:custom_headers).value!
    end

    #
    # Sets the Auto Quota Increase enrollment properties for the specified
    # subscription.
    #
    # @param subscription_id [String] Azure subscription id.
    # @param auto_quota_increase_request [AutoQuotaIncreaseDetail] Auto Quota
    # increase request payload.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(subscription_id, auto_quota_increase_request, custom_headers:nil)
      fail ArgumentError, 'subscription_id is nil' if subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'auto_quota_increase_request is nil' if auto_quota_increase_request.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AutoQuotaIncreaseDetail.mapper()
      request_content = @client.serialize(request_mapper,  auto_quota_increase_request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Capacity/autoQuotaIncrease'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Reservations::Mgmt::V2019_07_19_preview::Models::AutoQuotaIncreaseDetail.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
