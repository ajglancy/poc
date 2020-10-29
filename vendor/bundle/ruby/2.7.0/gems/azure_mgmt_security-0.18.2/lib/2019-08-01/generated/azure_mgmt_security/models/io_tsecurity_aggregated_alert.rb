# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # Security Solution Aggregated Alert information
    #
    class IoTSecurityAggregatedAlert

      include MsRestAzure

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [String] Name of the alert type
      attr_accessor :alert_type

      # @return [String] Display name of the alert type
      attr_accessor :alert_display_name

      # @return [Date] The date the incidents were detected by the vendor
      attr_accessor :aggregated_date_utc

      # @return [String] Name of the vendor that discovered the incident
      attr_accessor :vendor_name

      # @return [ReportedSeverity] Estimated severity of this alert. Possible
      # values include: 'Informational', 'Low', 'Medium', 'High'
      attr_accessor :reported_severity

      # @return [String] Recommended steps for remediation
      attr_accessor :remediation_steps

      # @return [String] Description of the incident and what it means
      attr_accessor :description

      # @return [Integer] Occurrence number of the alert within the aggregated
      # date
      attr_accessor :count

      # @return [String] Azure resource ID of the resource that got the alerts
      attr_accessor :effected_resource_type

      # @return [String] The type of the alerted resource (Azure, Non-Azure)
      attr_accessor :system_source

      # @return [String] The action that was taken as a response to the alert
      # (Active, Blocked etc.)
      attr_accessor :action_taken

      # @return [String] query in log analytics to get the list of affected
      # devices/alerts
      attr_accessor :log_analytics_query


      #
      # Mapper for IoTSecurityAggregatedAlert class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTSecurityAggregatedAlert',
          type: {
            name: 'Composite',
            class_name: 'IoTSecurityAggregatedAlert',
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
              alert_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.alertType',
                type: {
                  name: 'String'
                }
              },
              alert_display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.alertDisplayName',
                type: {
                  name: 'String'
                }
              },
              aggregated_date_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.aggregatedDateUtc',
                type: {
                  name: 'Date'
                }
              },
              vendor_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.vendorName',
                type: {
                  name: 'String'
                }
              },
              reported_severity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reportedSeverity',
                type: {
                  name: 'String'
                }
              },
              remediation_steps: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.remediationSteps',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.count',
                type: {
                  name: 'Number'
                }
              },
              effected_resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.effectedResourceType',
                type: {
                  name: 'String'
                }
              },
              system_source: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.systemSource',
                type: {
                  name: 'String'
                }
              },
              action_taken: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.actionTaken',
                type: {
                  name: 'String'
                }
              },
              log_analytics_query: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.logAnalyticsQuery',
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
