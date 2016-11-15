# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Description of an hostingEnvironment (App Service Environment)
    #
    class AppServiceEnvironment < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] Name of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :app_service_environment_name

      # @return [String] Location of the hostingEnvironment (App Service
      # Environment), e.g. "West US"
      attr_accessor :app_service_environment_location

      # @return [ProvisioningState] Provisioning state of the
      # hostingEnvironment (App Service Environment). Possible values include:
      # 'Succeeded', 'Failed', 'Canceled', 'InProgress', 'Deleting'
      attr_accessor :provisioning_state

      # @return [HostingEnvironmentStatus] Current status of the
      # hostingEnvironment (App Service Environment). Possible values include:
      # 'Preparing', 'Ready', 'Scaling', 'Deleting'
      attr_accessor :status

      # @return [String] Name of the hostingEnvironment's (App Service
      # Environment) virtual network
      attr_accessor :vnet_name

      # @return [String] Resource group of the hostingEnvironment's (App
      # Service Environment) virtual network
      attr_accessor :vnet_resource_group_name

      # @return [String] Subnet of the hostingEnvironment's (App Service
      # Environment) virtual network
      attr_accessor :vnet_subnet_name

      # @return [VirtualNetworkProfile] Description of the hostingEnvironment's
      # (App Service Environment) virtual network
      attr_accessor :virtual_network

      # @return [InternalLoadBalancingMode] Specifies which endpoints to serve
      # internally in the hostingEnvironment's (App Service Environment) VNET.
      # Possible values include: 'None', 'Web', 'Publishing'
      attr_accessor :internal_load_balancing_mode

      # @return [String] Front-end VM size, e.g. "Medium", "Large"
      attr_accessor :multi_size

      # @return [Integer] Number of front-end instances
      attr_accessor :multi_role_count

      # @return [Array<WorkerPool>] Description of worker pools with worker
      # size ids, VM sizes, and number of workers in each pool
      attr_accessor :worker_pools

      # @return [Integer] Number of IP SSL addresses reserved for this
      # hostingEnvironment (App Service Environment)
      attr_accessor :ipssl_address_count

      # @return [String] Edition of the metadata database for the
      # hostingEnvironment (App Service Environment) e.g. "Standard"
      attr_accessor :database_edition

      # @return [String] Service objective of the metadata database for the
      # hostingEnvironment (App Service Environment) e.g. "S0"
      attr_accessor :database_service_objective

      # @return [Integer] Number of upgrade domains of this hostingEnvironment
      # (App Service Environment)
      attr_accessor :upgrade_domains

      # @return [String] Subscription of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :subscription_id

      # @return [String] DNS suffix of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :dns_suffix

      # @return [String] Last deployment action on this hostingEnvironment (App
      # Service Environment)
      attr_accessor :last_action

      # @return [String] Result of the last deployment action on this
      # hostingEnvironment (App Service Environment)
      attr_accessor :last_action_result

      # @return [String] List of comma separated strings describing which VM
      # sizes are allowed for front-ends
      attr_accessor :allowed_multi_sizes

      # @return [String] List of comma separated strings describing which VM
      # sizes are allowed for workers
      attr_accessor :allowed_worker_sizes

      # @return [Integer] Maximum number of VMs in this hostingEnvironment (App
      # Service Environment)
      attr_accessor :maximum_number_of_machines

      # @return [Array<VirtualIPMapping>] Description of IP SSL mapping for
      # this hostingEnvironment (App Service Environment)
      attr_accessor :vip_mappings

      # @return [Array<StampCapacity>] Current total, used, and available
      # worker capacities
      attr_accessor :environment_capacities

      # @return [Array<NetworkAccessControlEntry>] Access control list for
      # controlling traffic to the hostingEnvironment (App Service Environment)
      attr_accessor :network_access_control_list

      # @return [Boolean] True/false indicating whether the hostingEnvironment
      # (App Service Environment) is healthy
      attr_accessor :environment_is_healthy

      # @return [String] Detailed message about with results of the last check
      # of the hostingEnvironment (App Service Environment)
      attr_accessor :environment_status

      # @return [String] Resource group of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :resource_group

      # @return [Integer] Scale Factor for FrontEnds
      attr_accessor :front_end_scale_factor

      # @return [String]
      attr_accessor :api_management_account_id

      # @return [Boolean] True/false indicating whether the hostingEnvironment
      # is suspended. The environment can be suspended e.g. when the management
      # endpoint is no longer available
      # (most likely because NSG blocked the incoming traffic)
      attr_accessor :suspended

      # @return [Boolean] True/false indicating whether the hostingEnvironment
      # is suspended. The environment can be suspended e.g. when the management
      # endpoint is no longer available
      # (most likely because NSG blocked the incoming traffic)
      attr_accessor :dynamic_cache_enabled

      # @return [Array<NameValuePair>] Custom settings for changing the
      # behavior of the hosting environment
      attr_accessor :cluster_settings


      #
      # Mapper for AppServiceEnvironment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AppServiceEnvironment',
          type: {
            name: 'Composite',
            class_name: 'AppServiceEnvironment',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              app_service_environment_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              app_service_environment_location: {
                required: false,
                serialized_name: 'properties.location',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'HostingEnvironmentStatus'
                }
              },
              vnet_name: {
                required: false,
                serialized_name: 'properties.vnetName',
                type: {
                  name: 'String'
                }
              },
              vnet_resource_group_name: {
                required: false,
                serialized_name: 'properties.vnetResourceGroupName',
                type: {
                  name: 'String'
                }
              },
              vnet_subnet_name: {
                required: false,
                serialized_name: 'properties.vnetSubnetName',
                type: {
                  name: 'String'
                }
              },
              virtual_network: {
                required: false,
                serialized_name: 'properties.virtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkProfile'
                }
              },
              internal_load_balancing_mode: {
                required: false,
                serialized_name: 'properties.internalLoadBalancingMode',
                type: {
                  name: 'Enum',
                  module: 'InternalLoadBalancingMode'
                }
              },
              multi_size: {
                required: false,
                serialized_name: 'properties.multiSize',
                type: {
                  name: 'String'
                }
              },
              multi_role_count: {
                required: false,
                serialized_name: 'properties.multiRoleCount',
                type: {
                  name: 'Number'
                }
              },
              worker_pools: {
                required: false,
                serialized_name: 'properties.workerPools',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WorkerPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkerPool'
                      }
                  }
                }
              },
              ipssl_address_count: {
                required: false,
                serialized_name: 'properties.ipsslAddressCount',
                type: {
                  name: 'Number'
                }
              },
              database_edition: {
                required: false,
                serialized_name: 'properties.databaseEdition',
                type: {
                  name: 'String'
                }
              },
              database_service_objective: {
                required: false,
                serialized_name: 'properties.databaseServiceObjective',
                type: {
                  name: 'String'
                }
              },
              upgrade_domains: {
                required: false,
                serialized_name: 'properties.upgradeDomains',
                type: {
                  name: 'Number'
                }
              },
              subscription_id: {
                required: false,
                serialized_name: 'properties.subscriptionId',
                type: {
                  name: 'String'
                }
              },
              dns_suffix: {
                required: false,
                serialized_name: 'properties.dnsSuffix',
                type: {
                  name: 'String'
                }
              },
              last_action: {
                required: false,
                serialized_name: 'properties.lastAction',
                type: {
                  name: 'String'
                }
              },
              last_action_result: {
                required: false,
                serialized_name: 'properties.lastActionResult',
                type: {
                  name: 'String'
                }
              },
              allowed_multi_sizes: {
                required: false,
                serialized_name: 'properties.allowedMultiSizes',
                type: {
                  name: 'String'
                }
              },
              allowed_worker_sizes: {
                required: false,
                serialized_name: 'properties.allowedWorkerSizes',
                type: {
                  name: 'String'
                }
              },
              maximum_number_of_machines: {
                required: false,
                serialized_name: 'properties.maximumNumberOfMachines',
                type: {
                  name: 'Number'
                }
              },
              vip_mappings: {
                required: false,
                serialized_name: 'properties.vipMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualIPMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualIPMapping'
                      }
                  }
                }
              },
              environment_capacities: {
                required: false,
                serialized_name: 'properties.environmentCapacities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StampCapacityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StampCapacity'
                      }
                  }
                }
              },
              network_access_control_list: {
                required: false,
                serialized_name: 'properties.networkAccessControlList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkAccessControlEntryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkAccessControlEntry'
                      }
                  }
                }
              },
              environment_is_healthy: {
                required: false,
                serialized_name: 'properties.environmentIsHealthy',
                type: {
                  name: 'Boolean'
                }
              },
              environment_status: {
                required: false,
                serialized_name: 'properties.environmentStatus',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                required: false,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              front_end_scale_factor: {
                required: false,
                serialized_name: 'properties.frontEndScaleFactor',
                type: {
                  name: 'Number'
                }
              },
              api_management_account_id: {
                required: false,
                serialized_name: 'properties.apiManagementAccountId',
                type: {
                  name: 'String'
                }
              },
              suspended: {
                required: false,
                serialized_name: 'properties.suspended',
                type: {
                  name: 'Boolean'
                }
              },
              dynamic_cache_enabled: {
                required: false,
                serialized_name: 'properties.dynamicCacheEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              cluster_settings: {
                required: false,
                serialized_name: 'properties.clusterSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NameValuePairElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NameValuePair'
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
