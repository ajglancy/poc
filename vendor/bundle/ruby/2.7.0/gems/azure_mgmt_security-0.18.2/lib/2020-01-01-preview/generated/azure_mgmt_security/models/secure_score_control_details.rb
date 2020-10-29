# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01_preview
  module Models
    #
    # Details of the security control, its score, and the health status of the
    # relevant resources.
    #
    class SecureScoreControlDetails < Resource

      include MsRestAzure

      # @return [String] User friendly display name of the control
      attr_accessor :display_name

      # @return [Integer] Maximum score available
      attr_accessor :max

      # @return [Float] Current score
      attr_accessor :current

      # @return [Integer] Number of healthy resources in the control
      attr_accessor :healthy_resource_count

      # @return [Integer] Number of unhealthy resources in the control
      attr_accessor :unhealthy_resource_count

      # @return [Integer] Number of not applicable resources in the control
      attr_accessor :not_applicable_resource_count

      # @return [SecureScoreControlDefinitionItem]
      attr_accessor :definition


      #
      # Mapper for SecureScoreControlDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecureScoreControlDetails',
          type: {
            name: 'Composite',
            class_name: 'SecureScoreControlDetails',
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
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              max: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.score.max',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              current: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.score.current',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Double'
                }
              },
              healthy_resource_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.healthyResourceCount',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_resource_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unhealthyResourceCount',
                type: {
                  name: 'Number'
                }
              },
              not_applicable_resource_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.notApplicableResourceCount',
                type: {
                  name: 'Number'
                }
              },
              definition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.definition',
                type: {
                  name: 'Composite',
                  class_name: 'SecureScoreControlDefinitionItem'
                }
              }
            }
          }
        }
      end
    end
  end
end
