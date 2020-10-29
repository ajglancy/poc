# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # Security Solution
    #
    class IoTSecuritySolutionModel

      include MsRestAzure

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [String] The resource location.
      attr_accessor :location

      # @return [String] Workspace resource ID
      attr_accessor :workspace

      # @return [String] Resource display name.
      attr_accessor :display_name

      # @return [SecuritySolutionStatus] Security solution status. Possible
      # values include: 'Enabled', 'Disabled'. Default value: 'Enabled' .
      attr_accessor :status

      # @return [Array<ExportData>] List of additional export to workspace data
      # options
      attr_accessor :export

      # @return [Array<DataSource>] Disabled data sources. Disabling these data
      # sources compromises the system.
      attr_accessor :disabled_data_sources

      # @return [Array<String>] IoT Hub resource IDs
      attr_accessor :iot_hubs

      # @return [UserDefinedResourcesProperties]
      attr_accessor :user_defined_resources

      # @return [Array<String>] List of resources that were automatically
      # discovered as relevant to the security solution.
      attr_accessor :auto_discovered_resources

      # @return [Array<RecommendationConfigurationProperties>]
      attr_accessor :recommendations_configuration


      #
      # Mapper for IoTSecuritySolutionModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTSecuritySolutionModel',
          type: {
            name: 'Composite',
            class_name: 'IoTSecuritySolutionModel',
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
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              workspace: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.workspace',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                default_value: 'Enabled',
                type: {
                  name: 'String'
                }
              },
              export: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.export',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExportDataElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              disabled_data_sources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disabledDataSources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataSourceElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              iot_hubs: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.iotHubs',
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
              user_defined_resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userDefinedResources',
                type: {
                  name: 'Composite',
                  class_name: 'UserDefinedResourcesProperties'
                }
              },
              auto_discovered_resources: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.autoDiscoveredResources',
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
              recommendations_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommendationsConfiguration',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendationConfigurationPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendationConfigurationProperties'
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
