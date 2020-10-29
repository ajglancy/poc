# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01_preview
  module Models
    #
    # List of Security Analytics of a security solution
    #
    class IoTSecuritySolutionAnalyticsModelList

      include MsRestAzure

      # @return [Array<IoTSecuritySolutionAnalyticsModel>] List of Security
      # Analytics of a security solution
      attr_accessor :value

      # @return [String] The URI to fetch the next page.
      attr_accessor :next_link


      #
      # Mapper for IoTSecuritySolutionAnalyticsModelList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTSecuritySolutionAnalyticsModelList',
          type: {
            name: 'Composite',
            class_name: 'IoTSecuritySolutionAnalyticsModelList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IoTSecuritySolutionAnalyticsModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecuritySolutionAnalyticsModel'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
