# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class JitNetworkAccessPortRule

      include MsRestAzure

      # @return [Integer]
      attr_accessor :number

      # @return [Protocol] Possible values include: 'TCP', 'UDP', 'All'
      attr_accessor :protocol

      # @return [String] Mutually exclusive with the
      # "allowedSourceAddressPrefixes" parameter. Should be an IP address or
      # CIDR, for example "192.168.0.3" or "192.168.0.0/16".
      attr_accessor :allowed_source_address_prefix

      # @return [Array<String>] Mutually exclusive with the
      # "allowedSourceAddressPrefix" parameter.
      attr_accessor :allowed_source_address_prefixes

      # @return [String] Maximum duration requests can be made for. In ISO 8601
      # duration format. Minimum 5 minutes, maximum 1 day
      attr_accessor :max_request_access_duration


      #
      # Mapper for JitNetworkAccessPortRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JitNetworkAccessPortRule',
          type: {
            name: 'Composite',
            class_name: 'JitNetworkAccessPortRule',
            model_properties: {
              number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'number',
                type: {
                  name: 'Number'
                }
              },
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              allowed_source_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedSourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              allowed_source_address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedSourceAddressPrefixes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              max_request_access_duration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxRequestAccessDuration',
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
