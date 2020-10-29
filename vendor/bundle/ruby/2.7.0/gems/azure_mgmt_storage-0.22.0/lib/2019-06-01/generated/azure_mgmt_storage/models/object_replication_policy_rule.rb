# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The replication policy rule between two containers.
    #
    class ObjectReplicationPolicyRule

      include MsRestAzure

      # @return [String] Rule Id is auto-generated for each new rule on
      # destination account. It is required for put policy on source account.
      attr_accessor :rule_id

      # @return [String] Required. Source container name.
      attr_accessor :source_container

      # @return [String] Required. Destination container name.
      attr_accessor :destination_container

      # @return [ObjectReplicationPolicyFilter] Optional. An object that
      # defines the filter set.
      attr_accessor :filters


      #
      # Mapper for ObjectReplicationPolicyRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ObjectReplicationPolicyRule',
          type: {
            name: 'Composite',
            class_name: 'ObjectReplicationPolicyRule',
            model_properties: {
              rule_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleId',
                type: {
                  name: 'String'
                }
              },
              source_container: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceContainer',
                type: {
                  name: 'String'
                }
              },
              destination_container: {
                client_side_validation: true,
                required: true,
                serialized_name: 'destinationContainer',
                type: {
                  name: 'String'
                }
              },
              filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'filters',
                type: {
                  name: 'Composite',
                  class_name: 'ObjectReplicationPolicyFilter'
                }
              }
            }
          }
        }
      end
    end
  end
end
