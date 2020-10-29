# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2019_07_01
  module Models
    #
    # Resource group information.
    #
    class ResourceGroupPatchable

      include MsRestAzure

      # @return [String] The name of the resource group.
      attr_accessor :name

      # @return [ResourceGroupProperties] The resource group properties.
      attr_accessor :properties

      # @return [String] The ID of the resource that manages this resource
      # group.
      attr_accessor :managed_by

      # @return [Hash{String => String}] The tags attached to the resource
      # group.
      attr_accessor :tags


      #
      # Mapper for ResourceGroupPatchable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceGroupPatchable',
          type: {
            name: 'Composite',
            class_name: 'ResourceGroupPatchable',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceGroupProperties'
                }
              },
              managed_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedBy',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
