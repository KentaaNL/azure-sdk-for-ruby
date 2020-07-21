# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # A class representing follower database request.
    #
    class FollowerDatabaseDefinition

      include MsRestAzure

      # @return [String] Resource id of the cluster that follows a database
      # owned by this cluster.
      attr_accessor :cluster_resource_id

      # @return [String] Resource name of the attached database configuration
      # in the follower cluster.
      attr_accessor :attached_database_configuration_name

      # @return [String] The database name owned by this cluster that was
      # followed. * in case following all databases.
      attr_accessor :database_name


      #
      # Mapper for FollowerDatabaseDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FollowerDatabaseDefinition',
          type: {
            name: 'Composite',
            class_name: 'FollowerDatabaseDefinition',
            model_properties: {
              cluster_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clusterResourceId',
                type: {
                  name: 'String'
                }
              },
              attached_database_configuration_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'attachedDatabaseConfigurationName',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databaseName',
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
