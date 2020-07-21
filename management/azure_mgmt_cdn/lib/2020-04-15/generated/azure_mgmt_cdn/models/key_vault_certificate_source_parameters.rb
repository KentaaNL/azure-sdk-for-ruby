# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Describes the parameters for using a user's KeyVault certificate for
    # securing custom domain.
    #
    class KeyVaultCertificateSourceParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.KeyVaultCertificateSourceParameters' .
      attr_accessor :odatatype

      # @return [String] Subscription Id of the user's Key Vault containing the
      # SSL certificate
      attr_accessor :subscription_id

      # @return [String] Resource group of the user's Key Vault containing the
      # SSL certificate
      attr_accessor :resource_group_name

      # @return [String] The name of the user's Key Vault containing the SSL
      # certificate
      attr_accessor :vault_name

      # @return [String] The name of Key Vault Secret (representing the full
      # certificate PFX) in Key Vault.
      attr_accessor :secret_name

      # @return [String] The version(GUID) of Key Vault Secret in Key Vault.
      attr_accessor :secret_version

      # @return [String] Describes the action that shall be taken when the
      # certificate is updated in Key Vault. Default value: 'NoAction' .
      attr_accessor :update_rule

      # @return [String] Describes the action that shall be taken when the
      # certificate is removed from Key Vault. Default value: 'NoAction' .
      attr_accessor :delete_rule


      #
      # Mapper for KeyVaultCertificateSourceParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultCertificateSourceParameters',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultCertificateSourceParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.KeyVaultCertificateSourceParameters',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              vault_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vaultName',
                type: {
                  name: 'String'
                }
              },
              secret_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretName',
                type: {
                  name: 'String'
                }
              },
              secret_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretVersion',
                type: {
                  name: 'String'
                }
              },
              update_rule: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'updateRule',
                default_value: 'NoAction',
                type: {
                  name: 'String'
                }
              },
              delete_rule: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'deleteRule',
                default_value: 'NoAction',
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
