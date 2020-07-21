# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # Class representing an iot hub data connection.
    #
    class IotHubDataConnection < DataConnection

      include MsRestAzure


      def initialize
        @kind = "IotHub"
      end

      attr_accessor :kind

      # @return [String] The resource ID of the Iot hub to be used to create a
      # data connection.
      attr_accessor :iot_hub_resource_id

      # @return [String] The iot hub consumer group.
      attr_accessor :consumer_group

      # @return [String] The table where the data should be ingested.
      # Optionally the table information can be added to each message.
      attr_accessor :table_name

      # @return [String] The mapping rule to be used to ingest the data.
      # Optionally the mapping information can be added to each message.
      attr_accessor :mapping_rule_name

      # @return [IotHubDataFormat] The data format of the message. Optionally
      # the data format can be added to each message. Possible values include:
      # 'MULTIJSON', 'JSON', 'CSV', 'TSV', 'SCSV', 'SOHSV', 'PSV', 'TXT',
      # 'RAW', 'SINGLEJSON', 'AVRO', 'TSVE', 'PARQUET', 'ORC', 'APACHEAVRO',
      # 'W3CLOGFILE'
      attr_accessor :data_format

      # @return [Array<String>] System properties of the iot hub
      attr_accessor :event_system_properties

      # @return [String] The name of the share access policy
      attr_accessor :shared_access_policy_name


      #
      # Mapper for IotHubDataConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHub',
          type: {
            name: 'Composite',
            class_name: 'IotHubDataConnection',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              iot_hub_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.iotHubResourceId',
                type: {
                  name: 'String'
                }
              },
              consumer_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.consumerGroup',
                type: {
                  name: 'String'
                }
              },
              table_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tableName',
                type: {
                  name: 'String'
                }
              },
              mapping_rule_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mappingRuleName',
                type: {
                  name: 'String'
                }
              },
              data_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataFormat',
                type: {
                  name: 'String'
                }
              },
              event_system_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.eventSystemProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              shared_access_policy_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sharedAccessPolicyName',
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
