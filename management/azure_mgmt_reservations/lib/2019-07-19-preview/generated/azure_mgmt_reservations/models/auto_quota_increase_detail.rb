# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_07_19_preview
  module Models
    #
    # Auto Quota Increase settings.
    #
    class AutoQuotaIncreaseDetail

      include MsRestAzure

      # @return [String] The subscription Id.
      attr_accessor :id

      # @return [String] The name of the auto quota increase.
      attr_accessor :name

      # @return [String] The type of the resource
      attr_accessor :type

      # @return [AqiSettings] Settings for automatic quota increase.
      attr_accessor :settings

      # @return [Actions] The on failure Actions.
      attr_accessor :on_failure

      # @return [Actions] The on success Actions.
      attr_accessor :on_success

      # @return [SupportRequestAction] The support ticket action.
      attr_accessor :support_ticket_action


      #
      # Mapper for AutoQuotaIncreaseDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoQuotaIncreaseDetail',
          type: {
            name: 'Composite',
            class_name: 'AutoQuotaIncreaseDetail',
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
              settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Composite',
                  class_name: 'AqiSettings'
                }
              },
              on_failure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.onFailure',
                type: {
                  name: 'Composite',
                  class_name: 'Actions'
                }
              },
              on_success: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.onSuccess',
                type: {
                  name: 'Composite',
                  class_name: 'Actions'
                }
              },
              support_ticket_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportTicketAction',
                type: {
                  name: 'Composite',
                  class_name: 'SupportRequestAction'
                }
              }
            }
          }
        }
      end
    end
  end
end
