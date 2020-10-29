# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # Properties of the table, including Id, resource name, resource type.
    #
    class Table < Resource

      include MsRestAzure

      # @return [String] Table name under the specified account
      attr_accessor :table_name


      #
      # Mapper for Table class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Table',
          type: {
            name: 'Composite',
            class_name: 'Table',
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
              table_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.tableName',
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
