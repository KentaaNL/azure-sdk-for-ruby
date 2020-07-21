# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines a rate limiting rule that can be included in a waf policy
    #
    class RateLimitRule < CustomRule

      include MsRestAzure

      # @return [Integer] Defines rate limit threshold.
      attr_accessor :rate_limit_threshold

      # @return [Integer] Defines rate limit duration. Default is 1 minute.
      attr_accessor :rate_limit_duration_in_minutes


      #
      # Mapper for RateLimitRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RateLimitRule',
          type: {
            name: 'Composite',
            class_name: 'RateLimitRule',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              enabled_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabledState',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: true,
                serialized_name: 'priority',
                constraints: {
                  InclusiveMaximum: 1000,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              match_conditions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'matchConditions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MatchConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MatchCondition'
                      }
                  }
                }
              },
              action: {
                client_side_validation: true,
                required: true,
                serialized_name: 'action',
                type: {
                  name: 'String'
                }
              },
              rate_limit_threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rateLimitThreshold',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              rate_limit_duration_in_minutes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rateLimitDurationInMinutes',
                constraints: {
                  InclusiveMaximum: 60,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
