# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the RequestHeader condition for the delivery rule.
    #
    class DeliveryRuleRequestHeaderCondition < DeliveryRuleCondition

      include MsRestAzure


      def initialize
        @name = "RequestHeader"
      end

      attr_accessor :name

      # @return [RequestHeaderMatchConditionParameters] Defines the parameters
      # for the condition.
      attr_accessor :parameters


      #
      # Mapper for DeliveryRuleRequestHeaderCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestHeader',
          type: {
            name: 'Composite',
            class_name: 'DeliveryRuleRequestHeaderCondition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'RequestHeaderMatchConditionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
