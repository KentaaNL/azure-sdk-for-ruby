# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # The list Kusto databases operation response.
    #
    class DatabaseListResult

      include MsRestAzure

      # @return [Array<Database>] The list of Kusto databases.
      attr_accessor :value


      #
      # Mapper for DatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabaseElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'kind',
                        uber_parent: 'Resource',
                        class_name: 'Database'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
