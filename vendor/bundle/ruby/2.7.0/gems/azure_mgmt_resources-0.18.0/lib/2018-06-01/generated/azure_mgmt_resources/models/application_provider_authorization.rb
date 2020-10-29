# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2018_06_01
  module Models
    #
    # The managed application provider authorization.
    #
    class ApplicationProviderAuthorization

      include MsRestAzure

      # @return [String] The provider's principal identifier. This is the
      # identity that the provider will use to call ARM to manage the managed
      # application resources.
      attr_accessor :principal_id

      # @return [String] The provider's role definition identifier. This role
      # will define all the permissions that the provider must have on the
      # managed application's container resource group. This role definition
      # cannot have permission to delete the resource group.
      attr_accessor :role_definition_id


      #
      # Mapper for ApplicationProviderAuthorization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationProviderAuthorization',
          type: {
            name: 'Composite',
            class_name: 'ApplicationProviderAuthorization',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              role_definition_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'roleDefinitionId',
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
