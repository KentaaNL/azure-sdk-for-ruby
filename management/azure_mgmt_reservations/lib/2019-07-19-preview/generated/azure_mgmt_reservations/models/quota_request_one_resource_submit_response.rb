# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  module Models
    #
    # Quota submit request response
    #
    class QuotaRequestOneResourceSubmitResponse

      include MsRestAzure

      # @return [String] The quota request Id.
      attr_accessor :id

      # @return [String] The name of the quota request.
      attr_accessor :name

      # @return [String] Type of resource. "Microsoft.Capacity/ServiceLimits"
      attr_accessor :type

      # @return The quota request status.
      attr_accessor :provisioning_state

      # @return [String] User friendly status message.
      attr_accessor :message

      # @return [DateTime] The quota request submit time. The date conforms to
      # the following format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601
      # standard.
      attr_accessor :request_submit_time

      # @return [QuotaProperties] Quota properties for the resource.
      attr_accessor :properties


      #
      # Mapper for QuotaRequestOneResourceSubmitResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QuotaRequestOneResourceSubmitResponse',
          type: {
            name: 'Composite',
            class_name: 'QuotaRequestOneResourceSubmitResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Object'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.message',
                type: {
                  name: 'String'
                }
              },
              request_submit_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.requestSubmitTime',
                type: {
                  name: 'DateTime'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.properties.properties',
                type: {
                  name: 'Composite',
                  class_name: 'QuotaProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
