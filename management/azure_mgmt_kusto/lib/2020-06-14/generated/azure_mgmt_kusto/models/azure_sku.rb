# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # Azure SKU definition.
    #
    class AzureSku

      include MsRestAzure

      # @return [AzureSkuName] SKU name. Possible values include:
      # 'Standard_DS13_v2+1TB_PS', 'Standard_DS13_v2+2TB_PS',
      # 'Standard_DS14_v2+3TB_PS', 'Standard_DS14_v2+4TB_PS',
      # 'Standard_D13_v2', 'Standard_D14_v2', 'Standard_L8s', 'Standard_L16s',
      # 'Standard_D11_v2', 'Standard_D12_v2', 'Standard_L4s', 'Dev(No
      # SLA)_Standard_D11_v2', 'Standard_E2a_v4', 'Standard_E4a_v4',
      # 'Standard_E8a_v4', 'Standard_E16a_v4', 'Standard_E8as_v4+1TB_PS',
      # 'Standard_E8as_v4+2TB_PS', 'Standard_E16as_v4+3TB_PS',
      # 'Standard_E16as_v4+4TB_PS', 'Dev(No SLA)_Standard_E2a_v4'
      attr_accessor :name

      # @return [Integer] The number of instances of the cluster.
      attr_accessor :capacity

      # @return [AzureSkuTier] SKU tier. Possible values include: 'Basic',
      # 'Standard'
      attr_accessor :tier


      #
      # Mapper for AzureSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureSku',
          type: {
            name: 'Composite',
            class_name: 'AzureSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'Number'
                }
              },
              tier: {
                client_side_validation: true,
                required: true,
                serialized_name: 'tier',
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
