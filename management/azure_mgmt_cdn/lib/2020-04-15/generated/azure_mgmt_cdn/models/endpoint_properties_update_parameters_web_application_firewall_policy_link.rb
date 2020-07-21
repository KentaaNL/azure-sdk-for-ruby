# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the Web Application Firewall policy for the endpoint (if
    # applicable)
    #
    class EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink

      include MsRestAzure

      # @return [String] Resource ID.
      attr_accessor :id


      #
      # Mapper for
      # EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EndpointPropertiesUpdateParameters_webApplicationFirewallPolicyLink',
          type: {
            name: 'Composite',
            class_name: 'EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLink',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
