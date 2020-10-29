# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # An object that wraps the Lifecycle rule. Each rule is uniquely defined by
    # name.
    #
    class ManagementPolicyRule

      include MsRestAzure

      # @return [Boolean] Rule is enabled if set to true.
      attr_accessor :enabled

      # @return [String] A rule name can contain any combination of alpha
      # numeric characters. Rule name is case-sensitive. It must be unique
      # within a policy.
      attr_accessor :name

      # @return [String] The valid value is Lifecycle. Default value:
      # 'Lifecycle' .
      attr_accessor :type

      # @return [ManagementPolicyDefinition] An object that defines the
      # Lifecycle rule.
      attr_accessor :definition


      #
      # Mapper for ManagementPolicyRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementPolicyRule',
          type: {
            name: 'Composite',
            class_name: 'ManagementPolicyRule',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Lifecycle',
                type: {
                  name: 'String'
                }
              },
              definition: {
                client_side_validation: true,
                required: true,
                serialized_name: 'definition',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementPolicyDefinition'
                }
              }
            }
          }
        }
      end
    end
  end
end
