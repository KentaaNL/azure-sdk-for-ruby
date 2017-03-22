# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_service_bus/module_definition'
require 'ms_rest_azure'

module Azure::ARM::ServiceBus
  autoload :Operations,                                         'generated/azure_mgmt_service_bus/operations.rb'
  autoload :Namespaces,                                         'generated/azure_mgmt_service_bus/namespaces.rb'
  autoload :Queues,                                             'generated/azure_mgmt_service_bus/queues.rb'
  autoload :Topics,                                             'generated/azure_mgmt_service_bus/topics.rb'
  autoload :Subscriptions,                                      'generated/azure_mgmt_service_bus/subscriptions.rb'
  autoload :ServiceBusManagementClient,                         'generated/azure_mgmt_service_bus/service_bus_management_client.rb'

  module Models
    autoload :RegenerateKeysParameters,                           'generated/azure_mgmt_service_bus/models/regenerate_keys_parameters.rb'
    autoload :MessageCountDetails,                                'generated/azure_mgmt_service_bus/models/message_count_details.rb'
    autoload :Sku,                                                'generated/azure_mgmt_service_bus/models/sku.rb'
    autoload :CheckNameAvailabilityResult,                        'generated/azure_mgmt_service_bus/models/check_name_availability_result.rb'
    autoload :NamespaceUpdateParameters,                          'generated/azure_mgmt_service_bus/models/namespace_update_parameters.rb'
    autoload :QueueListResult,                                    'generated/azure_mgmt_service_bus/models/queue_list_result.rb'
    autoload :SharedAccessAuthorizationRuleListResult,            'generated/azure_mgmt_service_bus/models/shared_access_authorization_rule_list_result.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_service_bus/models/operation_list_result.rb'
    autoload :CheckNameAvailability,                              'generated/azure_mgmt_service_bus/models/check_name_availability.rb'
    autoload :NamespaceListResult,                                'generated/azure_mgmt_service_bus/models/namespace_list_result.rb'
    autoload :TopicListResult,                                    'generated/azure_mgmt_service_bus/models/topic_list_result.rb'
    autoload :ResourceListKeys,                                   'generated/azure_mgmt_service_bus/models/resource_list_keys.rb'
    autoload :Operation,                                          'generated/azure_mgmt_service_bus/models/operation.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_service_bus/models/operation_display.rb'
    autoload :SubscriptionListResult,                             'generated/azure_mgmt_service_bus/models/subscription_list_result.rb'
    autoload :TrackedResource,                                    'generated/azure_mgmt_service_bus/models/tracked_resource.rb'
    autoload :Namespace,                                          'generated/azure_mgmt_service_bus/models/namespace.rb'
    autoload :SharedAccessAuthorizationRule,                      'generated/azure_mgmt_service_bus/models/shared_access_authorization_rule.rb'
    autoload :Queue,                                              'generated/azure_mgmt_service_bus/models/queue.rb'
    autoload :Topic,                                              'generated/azure_mgmt_service_bus/models/topic.rb'
    autoload :Subscription,                                       'generated/azure_mgmt_service_bus/models/subscription.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_service_bus/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_service_bus/models/sku_tier.rb'
    autoload :AccessRights,                                       'generated/azure_mgmt_service_bus/models/access_rights.rb'
    autoload :Policykey,                                          'generated/azure_mgmt_service_bus/models/policykey.rb'
    autoload :EntityStatus,                                       'generated/azure_mgmt_service_bus/models/entity_status.rb'
    autoload :UnavailableReason,                                  'generated/azure_mgmt_service_bus/models/unavailable_reason.rb'
  end
end
